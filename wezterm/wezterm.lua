local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
-- Color Scheme
config.color_scheme = "Dracula"

-- Font
-- font.apply_font_cfg(config)
config.font = wezterm.font({
	family = "CaskaydiaCove Nerd Font",
	harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
})
config.font_size = 18

-- Inactive pane highlight
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

-- Terminal Background Image
config.window_background_image = "/Users/khan/Pictures/animu-waifu-2.jpg"
config.window_background_image_hsb = {
	-- Darken the background image by reducing it to 1/3rd
	brightness = 0.3,

	-- You can adjust the hue by scaling its value.
	-- a multiplier of 1.0 leaves the value unchanged.
	hue = 1.0,

	-- You can adjust the saturation also.
	saturation = 1.0,
}
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20
config.text_background_opacity = 0.9

-- Remove all bars
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

-- and finally, return the configuration to wezterm
return config
