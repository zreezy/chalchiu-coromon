# Steam Deck

chalchiu works on the Steam Deck (and other Linux PCs with Steam). Coromon only ships for Windows and macOS, so the
Deck runs the Windows version through Proton, and chalchiu runs inside it the same way it does on Windows. You need
one extra step compared to Windows: a **launch option** that tells Proton to load chalchiu (step 5).

> The macOS version of Coromon can't use chalchiu: it only works with the Windows version (directly or through Proton).

## Install

1. **Check your game version.** In Coromon, open **Settings → General** and scroll to **App version**. The latest
   release supports **v1.5.4**.

2. **Switch to Desktop Mode.** Press the **Steam** button → **Power** → **Switch to Desktop**.

3. **Download the zip.** Open a web browser (if you don't have one, install Firefox from the **Discover** app) and
   download the zip from the [latest release](https://github.com/zreezy/chalchiu-coromon/releases/latest). It goes to
   your **Downloads** folder.

4. **Unzip it into the game folder.**
   1. Open **Steam** on the desktop, right-click **Coromon** → **Manage** → **Browse local files**. A file manager
      window opens in the game folder (the one with `coromon.exe`). On the internal drive this is usually
      `/home/deck/.local/share/Steam/steamapps/common/Coromon`.
   2. In another file manager window, open **Downloads**, right-click the zip → **Extract** → **Extract archive to...**
      and pick the game folder. (Or double-click the zip and drag everything inside it into the game folder.)
   3. Check that `iphlpapi.dll` and the `mods` folder are now **next to `coromon.exe`**, not inside an extra subfolder.

5. **Add the launch option.** In Steam, right-click **Coromon** → **Properties** → **General**, and paste this into
   **Launch Options**:

   ```
   WINEDLLOVERRIDES="iphlpapi=n,b" %command%
   ```

   Proton has its own built-in `iphlpapi.dll` and uses it instead of chalchiu's unless told otherwise. `n,b` means
   "use the native (chalchiu's) file first, then the built-in one". You can also set this in Gaming Mode: Coromon's
   page → ⚙️ → **Properties**.

6. **Go back to Gaming Mode** (the **Return to Gaming Mode** icon on the desktop) and start Coromon. The **Mods**
   button in the top right of the title screen means chalchiu is working, and a `chalchiu.log` file appears in the
   game folder.

## Controls

- **Mod list and settings:** tap the **Mods** button on the touchscreen. In the popups, **A** presses the blue button
  and **B** goes back, like in the game's own menus. You can also tap rows and buttons.
- **Hotkeys:** the Trainer and Area Encounter Info hotkeys are keyboard keys (`numPad0` to `numPad9` and so on), and
  the Deck has no keyboard. Map the ones you want to buttons in Steam Input: Coromon's page → 🎮 **Controller
  settings** → pick a button (the back buttons **L4, L5, R4, R5** are usually unused) → **Keyboard** → choose the
  key, e.g. **Numpad 0**. A Bluetooth or USB keyboard also works.
- **Rebinding:** you can change any hotkey in the mod's settings (**Set key**, then press the new key). With Steam
  Input, press the button you mapped to that key.

## Update

Switch to Desktop Mode and unzip the new release over the old files, as in step 4, replacing them when asked. Your
settings (`mods/<mod>/settings.lua`) are kept, and so is the launch option.

## Remove

Delete `iphlpapi.dll`, `mods`, `optional` and `chalchiu.log` from the game folder, and clear the launch option.

## Troubleshooting

- **No Mods button and no `chalchiu.log`:** check the launch option (copy it exactly, including the quotes and
  `%command%`), and that `iphlpapi.dll` is next to `coromon.exe`.
- **The game doesn't start after adding the launch option:** remove it to check that the game starts without it,
  then add it back exactly as above.
- **Anything else:** see [Troubleshooting](installation.md#troubleshooting). `chalchiu.log` is in the game folder.
  If something on this page doesn't match what you see on your Deck, please
  [open an issue](https://github.com/zreezy/chalchiu-coromon/issues/new).
