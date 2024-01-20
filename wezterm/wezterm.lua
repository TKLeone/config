local wezterm = require 'wezterm'
local config = {}
local dimmer = { brightness = 1.5, hue=1, saturation=1; }
local mux = wezterm.mux
wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

config.default_cwd = 'C:/User/...' -- edit default_cwd to correct home directory (or any directory needed)
config.colors = {
  cursor_bg = "white",
}
config.cursor_blink_rate = 0
config.hide_mouse_cursor_when_typing = false
config.font_size = 14.0
-- config.window_decorations = "RESIZE"
config.window_decorations = "TITLE | RESIZE "
config.enable_tab_bar = false
config.default_prog = {'C:\\Program Files\\PowerShell\\7\\pwsh.exe', '-nologo'} -- edit default shell to any needed
config.font = wezterm.font('JetBrains Mono', { weight = 'Regular', italic = false}) -- download jetbrains mono font from nerdfonts.com
config.font = wezterm.font_with_fallback {
  'JetBrains Mono',
  'Fira Mono'
}
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.background = {

  {
    source = {
      File =  'C:/Users/username/Pictures/spike2.png' -- edit image filepath
    },
    height ='100%',
    width = '100%',
    hsb= dimmer
  },

  {
    source = {
      File = 'C:/Users/username/Pictures/black.png' -- edit image filepath
    },
    repeat_x = "Mirror",
    width = 'Cover',
    opacity = 0.88777,
    vertical_align = 'Middle',
    horizontal_align = "Center",
  },

}
config.keys = {
  {
    key = "F11",
    action = wezterm.action.ToggleFullScreen,
  },
  {
    key = "z",
    mods = "CTRL",
    action = wezterm.action.CloseCurrentTab {confirm = false},
  },
  {
    key = 'c',
    mods = 'CTRL',
    action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection',
  },
  {
    key = 'v',
    mods = 'CTRL',
    action = wezterm.action.PasteFrom 'Clipboard',
  },
}

return config
