# Releasing

Every push builds chalchiu on GitHub Actions: the offline tests and mod checks run, and the zip is attached to the
run as the `chalchiu` artifact. A GitHub release is only published from `main`, and only when the version changes.
Players get an in-game update alert for every release, so test before merging into `main`:

1. Work on a branch (e.g. `dev`). Bump `VERSION` in the `project(...)` line of [CMakeLists.txt](../CMakeLists.txt)
   (e.g. `3.4.1` to `3.5.0`) and add a `## [3.5.0] - <date>` section to [CHANGELOG.md](../CHANGELOG.md); it becomes
   the release notes.
2. Push the branch. Its build is a **test build**: the version gets a `-test.<commit>` suffix (window title and
   `chalchiu.log` show e.g. `v3.5.0-test.1a2b3c4`), and it's never released. Download the zip from the run's
   **Artifacts** on the Actions tab and test it in the game. The update check treats `3.5.0-test.*` as older than
   `3.5.0`, so testers are told when the real release is out.
3. When it's good, merge the branch into `main` and push. The release `v3.5.0` is created with a ready-to-install
   zip, and players get the update alert.

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
