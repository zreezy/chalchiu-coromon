# Releasing

Every push builds chalchiu on GitHub Actions: the offline tests and mod checks run, and the zip is attached to the
run as the `chalchiu` artifact. A GitHub release is only published when the version changes:

1. Bump `VERSION` in the `project(...)` line of [CMakeLists.txt](../CMakeLists.txt) (e.g. `3.2.1` to `3.2.2`).
2. Add a `## [3.2.2] - <date>` section to [CHANGELOG.md](../CHANGELOG.md). It becomes the release notes.
3. Push to `main`. The release `v3.2.2` is created with a ready-to-install zip.

## Wiki

The wiki is generated from the repository (the README, `docs/*.md` and the game reference in `docs/game`), so edit
those files rather than the wiki. To update it, from a clone of the wiki next to the repository:

```sh
python tools/gamedocs/gamedocs.py wiki ../chalchiu-coromon.wiki
cd ../chalchiu-coromon.wiki
git add -A
git commit -m "Update wiki"
git push
```

## New game version

See [docs/game](game/README.md) for generating the reference for a new Coromon version and checking the mods against it.
