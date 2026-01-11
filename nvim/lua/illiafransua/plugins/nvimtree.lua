return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  keys = {
      { "<leader>e", ":NvimTreeToggle<CR>", desc = "Open Project Tree", silent=true },
    },
  opts = {
      view = {
number=false,	
	    signcolumn = "no",
        -- width = 35,
        relativenumber = true,
      },
      renderer = {
        group_empty = true,
        highlight_git = true,
	indent_markers = {
          enable = true,
        },
      },
        filters = {
          dotfiles = false,
          git_ignored = false
        }
  }
}
