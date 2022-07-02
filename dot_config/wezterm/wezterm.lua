local wezterm = require("wezterm")

return {
  color_scheme = "ayu",

  --[[ wezterm.font("Iosevka Fixed SS09", {weight="Regular", stretch="Normal", style="Normal"})
  wezterm.font("Iosevka Fixed SS09", {weight="Regular", stretch="Expanded", style="Normal"}) ]]

  font = wezterm.font("Iosevka SS09", { weight = "Regular", stretch = "Normal", style = "Normal" }),
  -- font = wezterm.font("Iosevka SS09", { weight = "Regular", stretch = "Expanded", style = "Normal" }),

  --[[ wezterm.font("Iosevka Term SS09", {weight="Regular", stretch="Normal", style="Normal"})
  wezterm.font("Iosevka Term SS09", {weight="Regular", stretch="Expanded", style="Normal"}) ]]

  -- font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" }),
  -- font = wezterm.font_with_fallback({
  --   "JetBrainsMono Nerd Font",
  --   "JetBrains Mono Regular",
  --   {
  --     family = "JetBrainsMono Nerd Font",
  --     weight = "Regular"
  --   },
  --   "Iosevka Nerd Font Mono Regular",
  -- }),
  font_size = 16.0,
  initial_cols = 200,
  initial_rows = 70,

  -- Overrides the text color when the current cell is occupied by the cursor
  -- cursor_fg = "black",
  -- enable_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
}
