-- Mod Info settings (change them in-game: Loaded Mods > Mod Info > check button)
return settings.define({
  {
    key = "showOnStartup",
    label = "Show mod list on startup",
    type = "boolean",
    default = true,
    description = "Show the Loaded Mods popup when the title screen appears.",
  },
  {
    key = "pauseMenuButton",
    label = "Pause menu button",
    type = "boolean",
    default = true,
    description = "Show an info button next to the gold counter in the pause menu. Takes effect the next time the pause menu opens.",
  },
})
