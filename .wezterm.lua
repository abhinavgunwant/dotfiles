local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- Font settings
config.font_size = 16
config.font = wezterm.font {
    family = 'FiraCode Nerd Font',
    weight = 'Regular',
}

config.window_background_opacity = 0.95
config.default_prog = { 'powershell' }
config.window_frame = {
    active_titlebar_bg = '#222222',
}
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'

-- Menu on right click on '+' button on tab bar.
config.launch_menu = {
    {
        label = 'patram - nvim',
        cwd = 'C:\\Users\\abhig\\Projects\\C++\\patram',
        args = { 'nvim', '.\\ui\\src\\include\\ui.hpp', '.\\ui\\src\\ui.cpp' },
    },
    {
        label = 'patram',
        cwd = 'C:\\Users\\abhig\\Projects\\C++\\patram',
    },
}

-- Maxmize on startup.
wezterm.on('gui-startup', function(cmd)
    local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

return config

