-- Mod Info settings (change them in-game: Loaded Mods > Mod Info > Settings)
return settings.define({
  {
    key = "showOnStartup",
    label = "Show mod list on startup",
    type = "boolean",
    default = true,
    description = "Show the Loaded Mods popup when the title screen appears.",
  },
  {
    key = "mainMenuButton",
    label = "Main menu button",
    type = "boolean",
    default = true,
    description = "Show a Mods button in the top-right corner of the title screen. Takes effect next time the title screen opens.",
  },
  {
    key = "pauseMenuButton",
    label = "Pause menu button",
    type = "boolean",
    default = true,
    description = "Show an info button next to the gold counter in the pause menu. Takes effect the next time the pause menu opens.",
  },
  {
    key = "checkForUpdates",
    label = "Check for updates",
    type = "boolean",
    default = true,
    description = "When the game starts, ask GitHub if a newer chalchiu release is out, and show it in the mod list.",
  },
  {
    key = "openKey",
    label = "Key: Open mod list",
    type = "key",
    default = "",
    description = "Optional hotkey that opens the Loaded Mods popup from anywhere.",
  },
})
