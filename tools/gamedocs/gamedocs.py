#!/usr/bin/env python3
"""
Generate modding docs for a Coromon version from the game's resource.car, compare versions, and
check mods against a version.

  python tools/gamedocs/gamedocs.py generate <resource.car> --version 1.5.4 [--metadata build-metadata.json]
  python tools/gamedocs/gamedocs.py diff 1.5.4 1.6.0
  python tools/gamedocs/gamedocs.py check scripts/coromon --version 1.5.4
  python tools/gamedocs/gamedocs.py wiki ../chalchiu-coromon.wiki

Output goes to docs/game/<version>/. Only names (modules, functions, parameters, fields, globals)
and simple default values are written, never game code.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from collections import defaultdict
from datetime import date
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from analyze import analyze_archive  # noqa: E402
from luabc import read_car  # noqa: E402

REPO = Path(__file__).resolve().parents[2]
DOCS = REPO / "docs" / "game"

MAX_FIELDS_PER_MODULE = 40
MAX_GLOBAL_MEMBERS = 40


# --------------------------------------------------------------------------------------------------------
# Helpers
# --------------------------------------------------------------------------------------------------------


def package_of(module: str) -> str:
    return module.rsplit(".", 1)[0] if "." in module else "(root)"


def short_name(module: str) -> str:
    return module.rsplit(".", 1)[-1]


def anchor(text: str) -> str:
    """GitHub-style heading anchor."""
    return re.sub(r"[^a-z0-9 _-]", "", text.lower()).replace(" ", "-")


def signature(name: str, params: list[str]) -> str:
    return f"{name}({', '.join(params)})"


def version_key(version: str):
    return [int(p) if p.isdigit() else p for p in re.split(r"[.\-]", version)]


def load_api(version: str) -> dict:
    path = DOCS / version / "api.json"
    if not path.exists():
        sys.exit(f"No api.json for version {version} ({path}). Run 'generate' first.")
    with open(path, encoding="utf-8") as f:
        return json.load(f)


# --------------------------------------------------------------------------------------------------------
# generate
# --------------------------------------------------------------------------------------------------------


# Copy protection is out of scope for a modding reference
EXCLUDED = re.compile(r"drm", re.IGNORECASE)

SENSITIVE_KEY = re.compile(
    r"(salt|secret|token|passw|apikey|api_key|privatekey|private_key|credential|signature|cipher|encrypt|auth|"
    r"license|hmac|(^|[._])key$|Key$)",
    re.IGNORECASE,
)
SAFE_STRING = re.compile(r'^"[A-Za-z0-9_./ :#%-]*"$')


def redact(key: str, value: str) -> str:
    """Hide default values that could be secrets (salts, keys, tokens, URLs, random-looking strings)."""
    if not value.startswith('"'):
        return value  # numbers, booleans, nil, {}
    inner = value[1:-1]
    looks_random = len(inner) >= 16 and not re.search(r"[./_ -]", inner) and re.search(r"\d", inner)
    if SENSITIVE_KEY.search(key) or "://" in inner or "@" in inner or not SAFE_STRING.match(value) or looks_random:
        return '"<redacted>"'
    return value


def _renamer(root: str | None, short: str):
    def rename(key: str) -> str:
        if root and root != short and re.match(rf"^{re.escape(root)}[.:]", key):
            return short + key[len(root):]
        return key

    return rename


def build_api(car: str, version: str, metadata: dict | None) -> dict:
    entries = read_car(car)
    modules, usage, data, errors = analyze_archive(entries)

    api_modules = {}
    for name, m in sorted(modules.items()):
        if EXCLUDED.search(name):
            continue
        # Name things after the module instead of its internal local (`t.new` -> `titleScreen.new`)
        rename = _renamer(m.returns, short_name(name))
        api_modules[name] = {
            "returns": m.returns,
            "requires": m.requires,
            "functions": {rename(f.name): f.params for f in sorted(m.functions.values(), key=lambda f: f.line)},
            "fields": {rename(k): redact(k, v) for k, v in m.fields.items()},
            "globals": {k: redact(k, v) for k, v in m.globals_defined.items()},
            "coroutines": m.uses_coroutines,
        }

    api_globals = {}
    for name, u in sorted(usage.items()):
        if not u.defined_in:
            continue  # Lua / Solar2D builtins, or things defined outside the archive
        api_globals[name] = {
            "defined_in": {mod: redact(name, d) for mod, d in u.defined_in.items()},
            "used_by": len(u.modules),
            "methods": dict(sorted(u.methods.items(), key=lambda kv: (-kv[1], kv[0]))),
            "fields": dict(sorted(u.fields.items(), key=lambda kv: (-kv[1], kv[0]))),
        }

    builtins = sorted(
        (name, len(u.modules)) for name, u in usage.items() if not u.defined_in and len(u.modules) >= 5
    )

    return {
        "version": version,
        "generated": date.today().isoformat(),
        "metadata": metadata or {},
        "counts": {"modules": len(api_modules), "globals": len(api_globals), "data": data},
        "errors": errors,
        "modules": api_modules,
        "globals": api_globals,
        "builtins": {name: count for name, count in builtins},
    }


def write_api(api: dict, out: Path):
    # One module per line keeps git diffs between versions readable
    with open(out / "api.json", "w", encoding="utf-8") as f:
        f.write("{\n")
        head = {k: v for k, v in api.items() if k not in ("modules", "globals")}
        for key, value in head.items():
            f.write(f"  {json.dumps(key)}: {json.dumps(value, ensure_ascii=False)},\n")
        for section in ("modules", "globals"):
            f.write(f'  "{section}": {{\n')
            items = list(api[section].items())
            for i, (name, value) in enumerate(items):
                comma = "," if i < len(items) - 1 else ""
                f.write(f"    {json.dumps(name)}: {json.dumps(value, ensure_ascii=False, separators=(',', ':'))}{comma}\n")
            f.write("  }" + ("," if section == "modules" else "") + "\n")
        f.write("}\n")


def render_module(name: str, m: dict, version: str) -> list[str]:
    lines = [f"### {short_name(name)}", "", f"`{name}`", ""]

    meta = []
    if m["returns"]:
        meta.append(f"returns `{m['returns']}`")
    if m["coroutines"]:
        meta.append("uses coroutines")
    if meta:
        lines += ["- " + ", ".join(meta)]

    if m["requires"]:
        reqs = ", ".join(f"`{r}`" for r in m["requires"])
        lines += [f"- requires: {reqs}"]

    if m["globals"]:
        defs = ", ".join(f"`{g}` = {d}" for g, d in m["globals"].items())
        lines += [f"- defines globals: {defs}"]

    if meta or m["requires"] or m["globals"]:
        lines.append("")

    functions = m["functions"]
    if functions:
        root = short_name(name)
        own = {k: v for k, v in functions.items() if re.split(r"[.:]", k)[0] == root}
        other = {k: v for k, v in functions.items() if k not in own}

        if own:
            lines += [f"- `{signature(k, v)}`" for k, v in own.items()]
            lines.append("")
        if other:
            label = "Instance / other functions" if own else "Functions"
            lines += [f"<details><summary>{label} ({len(other)})</summary>", ""]
            lines += [f"- `{signature(k, v)}`" for k, v in other.items()]
            lines += ["", "</details>", ""]

    fields = m["fields"]
    if fields:
        shown = list(fields.items())[:MAX_FIELDS_PER_MODULE]
        lines += [f"<details><summary>Fields with default values ({len(fields)})</summary>", ""]
        lines += [f"- `{k}` = `{v}`" for k, v in shown]
        if len(fields) > len(shown):
            lines.append(f"- ... {len(fields) - len(shown)} more in `api.json`")
        lines += ["", "</details>", ""]

    return lines


def generate(args):
    metadata = None
    if args.metadata:
        with open(args.metadata, encoding="utf-8") as f:
            metadata = json.load(f)

    version = args.version or (metadata or {}).get("appVersion")
    if not version:
        sys.exit("Pass --version or --metadata build-metadata.json")

    out = DOCS / version
    (out / "packages").mkdir(parents=True, exist_ok=True)
    for old in (out / "packages").glob("*.md"):
        old.unlink()

    print(f"Analysing {args.car} ...")
    api = build_api(args.car, version, metadata)
    write_api(api, out)

    modules = api["modules"]
    packages: dict[str, list[str]] = defaultdict(list)
    for name in modules:
        packages[package_of(name)].append(name)

    # Package pages
    for package, names in sorted(packages.items()):
        lines = [f"# {package}", "", f"Coromon {version}. {len(names)} module(s). [Back to index](../README.md)", ""]
        lines += [", ".join(f"[{short_name(n)}](#{anchor(short_name(n))})" for n in names), ""]
        for name in names:
            lines += render_module(name, modules[name], version)
        (out / "packages" / f"{package}.md").write_text("\n".join(lines), encoding="utf-8")

    # Globals page
    g_lines = [
        f"# Globals (Coromon {version})",
        "",
        "Globals the game defines, which mods can reach through `globals.<name>`. "
        "Members are the fields and methods the game itself uses on each global, most used first. "
        "[Back to index](README.md)",
        "",
        "| Global | Defined as | Used by | Most used members |",
        "|---|---|---|---|",
    ]
    for name, g in sorted(api["globals"].items(), key=lambda kv: (-kv[1]["used_by"], kv[0])):
        defined = "; ".join(f"{d} in `{short_name(mod)}`" for mod, d in list(g["defined_in"].items())[:2])
        members = [f":{k}" for k in g["methods"]][:8] + [f".{k}" for k in g["fields"]][:8]
        g_lines.append(f"| `{name}` | {defined} | {g['used_by']} | {' '.join(f'`{m}`' for m in members[:12])} |")

    g_lines += ["", "## Details", ""]
    for name, g in sorted(api["globals"].items()):
        if not g["methods"] and not g["fields"]:
            continue
        g_lines += [f"### {name}", ""]
        for mod, d in g["defined_in"].items():
            g_lines.append(f"- defined in `{mod}` as {d}")
        if g["methods"]:
            ms = list(g["methods"])[:MAX_GLOBAL_MEMBERS]
            g_lines.append("- methods: " + ", ".join(f"`:{m}`" for m in ms) + (" ..." if len(g["methods"]) > len(ms) else ""))
        if g["fields"]:
            fs = list(g["fields"])[:MAX_GLOBAL_MEMBERS]
            g_lines.append("- fields: " + ", ".join(f"`.{f}`" for f in fs) + (" ..." if len(g["fields"]) > len(fs) else ""))
        g_lines.append("")
    (out / "globals.md").write_text("\n".join(g_lines), encoding="utf-8")

    # Version index
    meta = api["metadata"]
    lines = [f"# Coromon {version}", ""]
    if meta:
        lines += ["| | |", "|---|---|"]
        for key in ("appVersion", "buildTarget", "solar2DVersion", "publicBaseBuildId", "githubSha"):
            if key in meta:
                lines.append(f"| {key} | `{meta[key]}` |")
        lines.append("")
    data = api["counts"]["data"]
    lines += [
        f"Generated {api['generated']} from `resource.car` with `tools/gamedocs`. "
        f"{api['counts']['modules']} code modules, {api['counts']['globals']} game globals.",
        "",
        "Data entries (not documented individually): " + ", ".join(f"{k}: {v}" for k, v in sorted(data.items())) + ".",
        "",
        "- [Globals](globals.md): what `globals.<name>` gives you, e.g. `debugSettings`, `playerMonsters`, `eventManager`",
        "- `api.json`: everything below in machine-readable form, used by `gamedocs.py diff` and `check`",
        "",
        "## How to read these docs",
        "",
        "- Module names are what you pass to `hooks.add(...)` or `globals.require(...)`.",
        "- `returns` is the table a module returns; that is what a hook callback receives.",
        "- `a:b(x)` is a method (call with `:`), `a.b(x)` a plain function. Parameter names come from the game's own debug info.",
        "- Instance functions (e.g. `parentGroup:addText`) are defined on objects created by `new`.",
        "- Field defaults are the values assigned at load time. Settings tables like `classes.configs.debugSettings` are listed here.",
        "",
        "## Packages",
        "",
        "| Package | Modules |",
        "|---|---|",
    ]
    for package, names in sorted(packages.items()):
        lines.append(f"| [{package}](packages/{package}.md) | {len(names)} |")
    if api["errors"]:
        lines += ["", "## Modules that could not be analysed", ""]
        lines += [f"- `{k}`: {v}" for k, v in api["errors"].items()]
    (out / "README.md").write_text("\n".join(lines) + "\n", encoding="utf-8")

    write_versions_index()
    print(f"Wrote {out} ({len(modules)} modules, {len(packages)} packages)")

    previous = [v for v in versions() if version_key(v) < version_key(version)]
    if previous:
        print(f"Tip: run 'gamedocs.py diff {previous[-1]} {version}' to document what changed.")


def versions() -> list[str]:
    if not DOCS.exists():
        return []
    return sorted((p.name for p in DOCS.iterdir() if (p / "api.json").exists()), key=version_key)


def write_versions_index():
    vs = versions()
    lines = [
        "# Coromon game reference",
        "",
        "Generated reference of the game's Lua modules for each game version, for writing and updating mods.",
        "It lists module names, functions with parameter names, fields with default values and globals. It does",
        "not contain game code.",
        "",
        "## Versions",
        "",
    ]
    for v in reversed(vs):
        changes = DOCS / v / "CHANGES.md"
        extra = f" ([changes](./{v}/CHANGES.md))" if changes.exists() else ""
        lines.append(f"- [{v}](./{v}/README.md){extra}")
    lines += [
        "",
        "## Adding a new game version",
        "",
        "1. Copy `Resources/resource.car` and `build-metadata.json` from the game folder somewhere outside the repo.",
        "   Do not commit `resource.car`; it is the game's code.",
        "2. Generate the docs (Python 3.9+, no dependencies):",
        "   ```",
        "   python tools/gamedocs/gamedocs.py generate path/to/resource.car --metadata path/to/build-metadata.json",
        "   ```",
        "3. Document what changed since the previous version:",
        "   ```",
        "   python tools/gamedocs/gamedocs.py diff <old version> <new version>",
        "   ```",
        "4. Check which mods reference things that no longer exist:",
        "   ```",
        "   python tools/gamedocs/gamedocs.py check scripts/coromon --version <new version>",
        "   ```",
        "5. Update the GitHub wiki (README pages + this reference) from a clone of the wiki repository:",
        "   ```",
        "   git clone https://github.com/<owner>/<repo>.wiki.git ../wiki",
        "   python tools/gamedocs/gamedocs.py wiki ../wiki",
        "   cd ../wiki && git add -A && git commit -m \"Update wiki\" && git push",
        "   ```",
        "",
    ]
    (DOCS / "README.md").write_text("\n".join(lines), encoding="utf-8")


# --------------------------------------------------------------------------------------------------------
# diff
# --------------------------------------------------------------------------------------------------------


def diff(args):
    old, new = load_api(args.old), load_api(args.new)
    om, nm = old["modules"], new["modules"]

    removed = sorted(set(om) - set(nm))
    added = sorted(set(nm) - set(om))

    # Modules that moved: same short name, removed in one place and added in another
    added_by_short = defaultdict(list)
    for name in added:
        added_by_short[short_name(name)].append(name)
    moved = {}
    for name in removed:
        candidates = added_by_short.get(short_name(name), [])
        if len(candidates) == 1:
            moved[name] = candidates[0]
    removed = [n for n in removed if n not in moved]
    added = [n for n in added if n not in moved.values()]

    lines = [
        f"# Changes from {args.old} to {args.new}",
        "",
        f"Generated by `gamedocs.py diff`. [{args.new} reference](README.md)",
        "",
        f"- Modules: {len(om)} -> {len(nm)} ({len(added)} added, {len(removed)} removed, {len(moved)} moved)",
        "",
    ]

    if moved:
        lines += ["## Moved modules", "", "| Old | New |", "|---|---|"]
        lines += [f"| `{o}` | `{n}` |" for o, n in sorted(moved.items())]
        lines.append("")

    if removed:
        lines += ["## Removed modules", ""] + [f"- `{n}`" for n in removed] + [""]
    if added:
        lines += ["## Added modules", ""] + [f"- `{n}`" for n in added] + [""]

    # Function and field changes in modules present in both (including moved ones)
    pairs = [(n, n) for n in sorted(set(om) & set(nm))] + sorted(moved.items())
    changed = []
    for o, n in pairs:
        of, nf = om[o]["functions"], nm[n]["functions"]
        gone = [f for f in of if f not in nf]
        new_f = [f for f in nf if f not in of]
        sig = [f for f in of if f in nf and of[f] != nf[f]]
        ofl, nfl = om[o]["fields"], nm[n]["fields"]
        fields_gone = [f for f in ofl if f not in nfl]
        fields_new = [f for f in nfl if f not in ofl]
        if gone or new_f or sig or fields_gone or fields_new:
            changed.append((n, gone, new_f, sig, of, nf, fields_gone, fields_new, nfl))

    if changed:
        lines += ["## Changed modules", ""]
        for n, gone, new_f, sig, of, nf, fields_gone, fields_new, nfl in changed:
            lines += [f"### {n}", ""]
            lines += [f"- removed `{signature(f, of[f])}`" for f in gone]
            lines += [f"- added `{signature(f, nf[f])}`" for f in new_f]
            lines += [f"- changed `{signature(f, of[f])}` -> `{signature(f, nf[f])}`" for f in sig]
            lines += [f"- removed field `{f}`" for f in fields_gone[:30]]
            lines += [f"- added field `{f}` = `{nfl[f]}`" for f in fields_new[:30]]
            lines.append("")

    og, ng = old["globals"], new["globals"]
    g_removed, g_added = sorted(set(og) - set(ng)), sorted(set(ng) - set(og))
    if g_removed or g_added:
        lines += ["## Globals", ""]
        lines += [f"- removed `{g}`" for g in g_removed]
        lines += [f"- added `{g}`" for g in g_added]
        lines.append("")

    out = DOCS / args.new / "CHANGES.md"
    out.write_text("\n".join(lines), encoding="utf-8")
    write_versions_index()
    print(f"Wrote {out}")


# --------------------------------------------------------------------------------------------------------
# check
# --------------------------------------------------------------------------------------------------------

MODULE_REF = re.compile(r"""(?:hooks\.add|globals\.require|pcall\(\s*globals\.require\s*,)\s*\(?\s*["']([\w.]+)["']""")
GLOBAL_REF = re.compile(r"\bglobals\.(\w+)((?:\.\w+)*)(:\w+)?")
DEBUG_SETTINGS_REF = re.compile(r"""setting\(\s*["'](\w+)["']\s*,\s*["'](\w+)["']\s*\)""")


def check(args):
    api = load_api(args.version)
    modules, globals_ = api["modules"], api["globals"]
    builtins = set(api.get("builtins", {})) | {"require", "timer", "transition", "display", "native", "system"}
    debug_fields = modules.get("classes.configs.debugSettings", {}).get("fields", {})

    problems = 0
    for path in sorted(Path(args.path).rglob("*.lua")):
        text = path.read_text(encoding="utf-8", errors="replace")
        rel = path.relative_to(Path(args.path))

        def report(lineno, message):
            nonlocal problems
            problems += 1
            print(f"{rel}:{lineno}: {message}")

        for lineno, line in enumerate(text.splitlines(), 1):
            if line.lstrip().startswith("--"):
                continue
            for module in MODULE_REF.findall(line):
                if module not in modules:
                    hint = [m for m in modules if short_name(m) == short_name(module)]
                    report(lineno, f"module '{module}' does not exist" + (f" (moved to '{hint[0]}'?)" if hint else ""))
            for name, chain, method in GLOBAL_REF.findall(line):
                if name in ("require",):
                    continue
                if name not in globals_ and name not in builtins:
                    report(lineno, f"global '{name}' is not defined by the game")
                    continue
                if name == "debugSettings" and chain:
                    path_ = "debugSettings" + chain
                    if not any(f == path_ or f.startswith(path_ + ".") for f in debug_fields):
                        report(lineno, f"debugSettings{chain} not found in classes.configs.debugSettings")
            for section, name in DEBUG_SETTINGS_REF.findall(line):
                if f"debugSettings.{section}.{name}" not in debug_fields:
                    report(lineno, f"debugSettings.{section}.{name} not found in classes.configs.debugSettings")

    print(f"{problems} problem(s) found against Coromon {args.version}")
    return 1 if problems else 0


# --------------------------------------------------------------------------------------------------------


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = parser.add_subparsers(dest="command", required=True)

    g = sub.add_parser("generate", help="generate docs/game/<version> from resource.car")
    g.add_argument("car", help="path to the game's Resources/resource.car")
    g.add_argument("--version", help="game version, e.g. 1.5.4 (defaults to appVersion from --metadata)")
    g.add_argument("--metadata", help="path to the game's build-metadata.json")

    d = sub.add_parser("diff", help="write docs/game/<new>/CHANGES.md")
    d.add_argument("old")
    d.add_argument("new")

    c = sub.add_parser("check", help="check mods for references to modules/globals that do not exist")
    c.add_argument("path", help="folder with mods, e.g. scripts/coromon")
    c.add_argument("--version", required=True)

    w = sub.add_parser("wiki", help="build the GitHub wiki (README pages + docs/game) into a wiki checkout")
    w.add_argument("out", help="path to a clone of <repo>.wiki.git")
    w.add_argument("--repo", help="owner/name on GitHub (defaults to the origin remote)")
    w.add_argument("--branch", default="main", help="branch the wiki links point to (default: main)")

    args = parser.parse_args()
    if args.command == "generate":
        generate(args)
    elif args.command == "diff":
        diff(args)
    elif args.command == "check":
        sys.exit(check(args))
    elif args.command == "wiki":
        from wiki import build

        pages = build(REPO, Path(args.out), args.repo, args.branch)
        print(f"Wrote {len(pages)} wiki pages to {args.out}")


if __name__ == "__main__":
    main()
