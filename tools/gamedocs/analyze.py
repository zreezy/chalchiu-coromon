"""
Static analysis of Coromon's Lua modules.

Walks the bytecode of every module with light symbolic register tracking and records the parts
that matter for modding: what a module requires, what it exports (functions with parameter names,
constant fields), which globals it defines, and which global fields/methods are used anywhere.

Nothing here reproduces game code: only names (modules, functions, parameters, fields, globals)
and simple constant default values are kept.
"""

from __future__ import annotations

from collections import defaultdict
from dataclasses import dataclass, field

from luabc import Proto, decode, parse_chunk

# Archive entries that are data rather than code. They are summarised, not documented one by one.
DATA_PREFIXES = {
    "classes.language.": "Translations",
    "optimizedMaps.": "Pre-built map data",
    "fonts.": "Font glyph tables",
    "bin.build.": "Build configuration",
}


@dataclass
class Function:
    name: str  # e.g. "titleScreen:new" or "titleScreen.helper"
    params: list[str]
    line: int


@dataclass
class Module:
    name: str
    source: str | None
    returns: str | None = None
    requires: list[str] = field(default_factory=list)
    functions: dict[str, Function] = field(default_factory=dict)
    fields: dict[str, str] = field(default_factory=dict)  # exported constant fields: name -> value
    globals_defined: dict[str, str] = field(default_factory=dict)  # global -> description
    globals_used: set[str] = field(default_factory=set)
    uses_coroutines: bool = False


@dataclass
class GlobalUsage:
    defined_in: dict[str, str] = field(default_factory=dict)  # module -> description
    fields: dict[str, int] = field(default_factory=lambda: defaultdict(int))
    methods: dict[str, int] = field(default_factory=lambda: defaultdict(int))
    modules: set[str] = field(default_factory=set)


# --------------------------------------------------------------------------------------------------------
# Symbolic values held in registers
# --------------------------------------------------------------------------------------------------------
# ("const", value) | ("global", name) | ("upval", name) | ("field", base, key) | ("require", module)
# ("closure", Proto) | ("table",) | ("call", callee) | None (unknown)


def _describe(value) -> str | None:
    if value is None:
        return None
    kind = value[0]
    if kind == "global":
        return value[1]
    if kind == "upval":
        return value[1]
    if kind == "local":
        return value[1]
    if kind == "field":
        base = _describe(value[1])
        return f"{base}.{value[2]}" if base else None
    if kind == "require":
        return f'require("{value[1]}")'
    return None


def _format_const(value) -> str:
    if value is None:
        return "nil"
    if isinstance(value, bool):
        return "true" if value else "false"
    if isinstance(value, float):
        return str(int(value)) if value.is_integer() else repr(value)
    text = str(value).replace("\n", "\\n")
    if len(text) > 60:
        text = text[:57] + "..."
    return f'"{text}"'


class _FunctionWalker:
    def __init__(self, module: Module, usage: dict[str, GlobalUsage], proto: Proto, path: list[str]):
        self.module = module
        self.usage = usage
        self.proto = proto
        self.path = path  # names of enclosing functions, used for nested definitions
        self.regs: dict[int, tuple | None] = {}

    def _rk(self, x: int):
        if x & 0x100:
            return ("const", self.proto.constants[x & 0xFF])
        return self.regs.get(x)

    def _reg_name(self, reg: int, pc: int) -> tuple | None:
        """Prefer the local variable name of a register, else its tracked symbolic value."""
        active = self.proto.active_locals(pc)
        if reg < len(active):
            tracked = self.regs.get(reg)
            # Keep provenance (e.g. `local x = require(...)`, `local function f()`)
            if tracked and tracked[0] in ("require", "closure", "table"):
                return ("local", active[reg], tracked)
            return ("local", active[reg])
        return self.regs.get(reg)

    def _note_global_use(self, name: str, key=None, method: bool = False):
        self.module.globals_used.add(name)
        usage = self.usage[name]
        usage.modules.add(self.module.name)
        if isinstance(key, str):
            (usage.methods if method else usage.fields)[key] += 1

    def walk(self):
        proto = self.proto
        code = proto.code
        pc = 0
        while pc < len(code):
            op, a, b, c, bx, _sbx = decode(code[pc])
            k = proto.constants

            if op == "MOVE":
                self.regs[a] = self._reg_name(b, pc)
            elif op == "LOADK":
                self.regs[a] = ("const", k[bx])
            elif op == "LOADBOOL":
                self.regs[a] = ("const", bool(b))
            elif op == "LOADNIL":
                for r in range(a, b + 1):
                    self.regs[r] = ("const", None)
            elif op == "GETUPVAL":
                name = proto.upvalues[b] if b < len(proto.upvalues) else f"upval{b}"
                self.regs[a] = ("upval", name)
            elif op == "GETGLOBAL":
                name = k[bx]
                self.regs[a] = ("global", name)
                self._note_global_use(name)
                if name == "coroutine":
                    self.module.uses_coroutines = True
            elif op in ("GETTABLE", "SELF"):
                base = self._reg_name(b, pc)
                key = self._rk(c)
                key = key[1] if key and key[0] == "const" else None
                if base and base[0] == "global":
                    self._note_global_use(base[1], key, method=(op == "SELF"))
                if op == "SELF":
                    self.regs[a + 1] = base
                    self.regs[a] = ("field", base, key) if base and isinstance(key, str) else None
                else:
                    self.regs[a] = ("field", base, key) if base and isinstance(key, str) else None
            elif op == "SETGLOBAL":
                self._define_global(k[bx], self.regs.get(a), pc)
            elif op == "SETTABLE":
                self._set_field(a, self._rk(b), self._rk(c), pc)
            elif op == "NEWTABLE":
                self.regs[a] = ("table", {})
            elif op == "CLOSURE":
                child = proto.protos[bx]
                self.regs[a] = ("closure", child)
                pc += child.nups  # skip the upvalue pseudo-instructions
            elif op in ("CALL", "TAILCALL"):
                callee = self.regs.get(a)
                arg = self.regs.get(a + 1)
                if callee and callee[0] == "global" and callee[1] == "require" and arg and arg[0] == "const":
                    if isinstance(arg[1], str) and arg[1] not in self.module.requires:
                        self.module.requires.append(arg[1])
                    self.regs[a] = ("require", arg[1])
                else:
                    self.regs[a] = ("call", callee)
                for r in list(self.regs):
                    if r > a:
                        self.regs.pop(r, None)
            elif op == "RETURN" and self.path == [] and b == 2:
                value = self._reg_name(a, pc)
                self.module.returns = _describe(value)
                if value and value[0] == "local" and len(value) > 2 and value[2][0] == "table":
                    self._flatten(self.module.returns, value[2][1])
            elif op in ("JMP", "FORLOOP", "FORPREP", "TFORLOOP"):
                pass  # linear approximation is good enough for documentation
            else:
                if op not in ("EQ", "LT", "LE", "TEST", "CLOSE", "SETUPVAL", "SETLIST", "RETURN"):
                    self.regs[a] = None
            pc += 1

        # Recurse into nested functions that were not named (callbacks etc.) to collect usage data
        for child in proto.protos:
            if not getattr(child, "_named", False):
                _FunctionWalker(self.module, self.usage, child, self.path + ["<anonymous>"]).walk()

    def _define_global(self, name: str, value, pc: int):
        if value and value[0] == "local" and len(value) > 2 and value[2][0] == "closure":
            value = value[2]
        if value and value[0] == "closure":
            value[1]._named = True
            fn = Function(name, value[1].params, value[1].linedefined)
            self.module.functions.setdefault(name, fn)
            _FunctionWalker(self.module, self.usage, value[1], self.path + [name]).walk()
            desc = f"function({', '.join(fn.params)})"
        elif value and value[0] == "require":
            desc = f'module "{value[1]}"'
        elif value and value[0] == "local" and len(value) > 2 and value[2][0] == "require":
            desc = f'module "{value[2][1]}"'
        elif value and value[0] == "call" and value[1] and value[1][0] == "field" and value[1][2] == "new":
            desc = f"instance of {_describe(value[1][1]) or '?'}"
        elif value and value[0] == "const":
            desc = _format_const(value[1])
        elif value and value[0] == "table":
            desc = "table"
            if not self.path:
                self._flatten(name, value[1])
        else:
            desc = _describe(value) or "value"
        self.module.globals_defined.setdefault(name, desc)
        self.usage[name].defined_in.setdefault(self.module.name, desc)

    def _flatten(self, prefix: str | None, table: dict):
        if not prefix:
            return
        for key, value in table.items():
            if isinstance(value, dict):
                if value:
                    self._flatten(f"{prefix}.{key}", value)
                else:
                    self.module.fields.setdefault(f"{prefix}.{key}", "{}")
            else:
                self.module.fields.setdefault(f"{prefix}.{key}", value)

    def _set_field(self, table_reg: int, key, value, pc: int):
        if not key or key[0] != "const" or not isinstance(key[1], str):
            return
        name = key[1]
        base_value = self._reg_name(table_reg, pc)

        if value and value[0] == "local" and len(value) > 2 and value[2][0] in ("closure", "table"):
            value = value[2]

        # Field of a table constructor that has no name yet (e.g. `{ game = { noClip = false } }`)
        if base_value and base_value[0] == "table":
            if value and value[0] == "const":
                base_value[1][name] = _format_const(value[1])
            elif value and value[0] == "table":
                base_value[1][name] = value[1]
            return

        base = _describe(base_value)
        if not base:
            return

        if value and value[0] == "table" and not self.path:
            self._flatten(f"{base}.{name}", value[1]) if value[1] else self.module.fields.setdefault(f"{base}.{name}", "{}")
            return

        if value and value[0] == "closure":
            child = value[1]
            child._named = True
            params = child.params
            sep = "."
            if params and params[0] == "self":
                sep, params = ":", params[1:]
            qualified = f"{base}{sep}{name}"
            self.module.functions.setdefault(qualified, Function(qualified, params, child.linedefined))
            _FunctionWalker(self.module, self.usage, child, self.path + [qualified]).walk()
        elif value and value[0] == "const" and not self.path:
            self.module.fields.setdefault(f"{base}.{name}", _format_const(value[1]))


def analyze_module(name: str, data: bytes, usage: dict[str, GlobalUsage]) -> Module:
    proto = parse_chunk(data)
    module = Module(name=name, source=proto.source)
    _FunctionWalker(module, usage, proto, []).walk()
    return module


def is_data(name: str) -> str | None:
    for prefix, label in DATA_PREFIXES.items():
        if name.startswith(prefix):
            return label
    return None


def analyze_archive(entries: dict[str, bytes]):
    usage: dict[str, GlobalUsage] = defaultdict(GlobalUsage)
    modules: dict[str, Module] = {}
    data: dict[str, int] = defaultdict(int)
    errors: dict[str, str] = {}

    for entry, blob in sorted(entries.items()):
        if not entry.endswith(".lu"):
            continue
        name = entry[:-3]
        label = is_data(name)
        if label:
            data[label] += 1
            continue
        try:
            modules[name] = analyze_module(name, blob, usage)
        except Exception as e:  # keep going, report at the end
            errors[name] = str(e)

    return modules, usage, dict(data), errors


def public_functions(module: Module) -> list[Function]:
    """Functions defined on the table the module returns, or all named ones if that is unknown."""
    short = module.name.rsplit(".", 1)[-1]
    roots = {r for r in (module.returns, short) if r}
    picked = [f for f in module.functions.values() if f.name.split(":")[0].split(".")[0] in roots]
    return sorted(picked or module.functions.values(), key=lambda f: f.line)
