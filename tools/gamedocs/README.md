# gamedocs

Generates the per-version game reference in [`docs/game`](../../docs/game) from Coromon's
`Resources/resource.car`, compares versions and checks mods against a version.
See [`docs/game/README.md`](../../docs/game/README.md) for usage.

- `luabc.py`: reader for Solar2D `.car` archives and Lua 5.1 bytecode
- `analyze.py`: static analysis of the game's modules (requires, functions, fields, globals)
- `gamedocs.py`: `generate`, `diff` and `check` commands

Only names and simple default values end up in the docs, never game code.
Never commit `resource.car` (it is ignored in `.gitignore`).
