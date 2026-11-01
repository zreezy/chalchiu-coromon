# Coromon game reference

Generated reference of the game's Lua modules for each game version, for writing and updating mods.
It lists module names, functions with parameter names, fields with default values and globals. It does
not contain game code.

## Versions

- [1.5.4](./1.5.4/README.md)

## Adding a new game version

1. Copy `Resources/resource.car` and `build-metadata.json` from the game folder somewhere outside the repo.
   Do not commit `resource.car`; it is the game's code.
2. Generate the docs (Python 3.9+, no dependencies):
   ```
   python tools/gamedocs/gamedocs.py generate path/to/resource.car --metadata path/to/build-metadata.json
   ```
3. Document what changed since the previous version:
   ```
   python tools/gamedocs/gamedocs.py diff <old version> <new version>
   ```
4. Check which mods reference things that no longer exist:
   ```
   python tools/gamedocs/gamedocs.py check scripts/coromon --version <new version>
   ```
