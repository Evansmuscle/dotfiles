local wezterm = require 'wezterm'

local font_cfg = {}

function font_cfg.apply_font_cfg(config)
    config.adjust_window_size_when_changing_font_size = false
    config.warn_about_missing_glyphs = false

    config.font_size = 18.0

    config.font = wezterm.font('Cascadia Code', { weight = 'Regular' })

    config.harfbuzz_features = {
        'zero',
        'kern',
        'liga',
        'clig',
    }
end

return font_cfg
