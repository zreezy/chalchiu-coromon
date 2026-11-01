"""
Readers for Solar2D resource archives (resource.car) and Lua 5.1 bytecode.

Only the standard library is used, so this runs anywhere Python 3.9+ is available.
"""

from __future__ import annotations

import struct
from dataclasses import dataclass, field

# --------------------------------------------------------------------------------------------------------
# resource.car
# --------------------------------------------------------------------------------------------------------
#
# Layout (little endian):
#   "rac" <version:u8>
#   <tag=1:u32> <index length:u32> <entry count:u32>
#   entry * count:  <type:u32> <data offset:u32> <name length:u32> <name> \0 (padded to 4 bytes)
#   at each data offset: <tag=2:u32> <padded size:u32> <size:u32> <bytes>


def read_car(path: str) -> dict[str, bytes]:
    with open(path, "rb") as f:
        data = f.read()

    if data[:3] != b"rac":
        raise ValueError(f"{path} is not a Solar2D resource archive")

    _tag, _length, count = struct.unpack_from("<III", data, 4)

    entries: dict[str, bytes] = {}
    pos = 16

    for _ in range(count):
        _kind, offset, name_length = struct.unpack_from("<III", data, pos)
        pos += 12

        name = data[pos : pos + name_length].decode("utf-8", "replace")
        pos = (pos + name_length + 1 + 3) & ~3

        _tag, _padded, size = struct.unpack_from("<III", data, offset)
        entries[name] = data[offset + 12 : offset + 12 + size]

    return entries


# --------------------------------------------------------------------------------------------------------
# Lua 5.1 bytecode
# --------------------------------------------------------------------------------------------------------

OPCODES = [
    "MOVE", "LOADK", "LOADBOOL", "LOADNIL", "GETUPVAL", "GETGLOBAL", "GETTABLE", "SETGLOBAL",
    "SETUPVAL", "SETTABLE", "NEWTABLE", "SELF", "ADD", "SUB", "MUL", "DIV", "MOD", "POW", "UNM",
    "NOT", "LEN", "CONCAT", "JMP", "EQ", "LT", "LE", "TEST", "TESTSET", "CALL", "TAILCALL",
    "RETURN", "FORLOOP", "FORPREP", "TFORLOOP", "SETLIST", "CLOSE", "CLOSURE", "VARARG",
]  # fmt: skip


@dataclass
class LocVar:
    name: str
    startpc: int
    endpc: int


@dataclass
class Proto:
    source: str | None
    linedefined: int
    lastlinedefined: int
    nups: int
    numparams: int
    is_vararg: int
    maxstack: int
    code: list[int]
    constants: list
    protos: list["Proto"]
    lineinfo: list[int]
    locvars: list[LocVar]
    upvalues: list[str]
    parent: "Proto | None" = field(default=None, repr=False)

    @property
    def params(self) -> list[str]:
        names = [v.name for v in self.locvars[: self.numparams]]
        if self.is_vararg & 2:  # VARARG_ISVARARG
            names.append("...")
        return names

    def active_locals(self, pc: int) -> list[str]:
        """Names of the locals alive at `pc`; index i is register i."""
        return [v.name for v in self.locvars if v.startpc <= pc < v.endpc]


class _Reader:
    def __init__(self, data: bytes):
        self.data = data
        self.pos = 0

    def u8(self) -> int:
        v = self.data[self.pos]
        self.pos += 1
        return v

    def int(self) -> int:
        v = struct.unpack_from("<i", self.data, self.pos)[0]
        self.pos += 4
        return v

    def u32(self) -> int:
        v = struct.unpack_from("<I", self.data, self.pos)[0]
        self.pos += 4
        return v

    def number(self) -> float:
        v = struct.unpack_from("<d", self.data, self.pos)[0]
        self.pos += 8
        return v

    def string(self) -> str | None:
        size = self.u32()
        if size == 0:
            return None
        v = self.data[self.pos : self.pos + size - 1].decode("utf-8", "replace")
        self.pos += size
        return v


def parse_chunk(data: bytes) -> Proto:
    if data[:5] != b"\x1bLuaQ":
        raise ValueError("not a Lua 5.1 chunk")

    header = data[5:12]
    # format 0, little endian, int 4, size_t 4, instruction 4, number 8, floating point
    if header != b"\x00\x01\x04\x04\x04\x08\x00":
        raise ValueError(f"unsupported Lua 5.1 chunk header {header!r}")

    reader = _Reader(data)
    reader.pos = 12
    return _parse_function(reader, None, None)


def _parse_function(r: _Reader, parent_source: str | None, parent: Proto | None) -> Proto:
    source = r.string() or parent_source
    linedefined = r.int()
    lastlinedefined = r.int()
    nups, numparams, is_vararg, maxstack = r.u8(), r.u8(), r.u8(), r.u8()

    code = [r.u32() for _ in range(r.int())]

    constants = []
    for _ in range(r.int()):
        kind = r.u8()
        if kind == 0:
            constants.append(None)
        elif kind == 1:
            constants.append(bool(r.u8()))
        elif kind == 3:
            constants.append(r.number())
        elif kind == 4:
            constants.append(r.string())
        else:
            raise ValueError(f"unknown constant type {kind}")

    proto = Proto(source, linedefined, lastlinedefined, nups, numparams, is_vararg, maxstack,
                  code, constants, [], [], [], [], parent)  # fmt: skip

    proto.protos = [_parse_function(r, source, proto) for _ in range(r.int())]
    proto.lineinfo = [r.int() for _ in range(r.int())]
    proto.locvars = [LocVar(r.string() or "?", r.int(), r.int()) for _ in range(r.int())]
    proto.upvalues = [r.string() or "?" for _ in range(r.int())]

    return proto


def decode(instruction: int) -> tuple[str, int, int, int, int, int]:
    """Returns (opcode name, A, B, C, Bx, sBx)."""
    op = instruction & 0x3F
    a = (instruction >> 6) & 0xFF
    c = (instruction >> 14) & 0x1FF
    b = (instruction >> 23) & 0x1FF
    bx = instruction >> 14
    return OPCODES[op] if op < len(OPCODES) else f"OP{op}", a, b, c, bx, bx - 131071
