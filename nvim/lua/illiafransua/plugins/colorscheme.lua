return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true,

      float = {
        transparent = true, -- enable transparent floating windows
        solid = false, -- use solid styling for floating windows, see |winborder|
      },

      term_colors = true,
     
      integrations = {
        telescope = {
          enabled = true,
        },
        treesitter = true,
        mason = true,
        which_key = true,
      },
  }
}
