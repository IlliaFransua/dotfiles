return {
  'nvim-telescope/telescope.nvim',
  tag = 'v0.2.0', -- or, branch = '0.1.x',
  keys = {
    { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Telescope find files" },
    { "<leader>fl", function() require("telescope.builtin").live_grep() end, desc = "Telescope live grep" },
    { "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "Telescope buffers" },
    { "<leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Telescope help tags" },
    { "<leader>fg", function() require("telescope.builtin").git_files() end, desc = "Telescope git files" },
    { ";",          function() require("telescope.builtin").buffers() end, desc = "Telescope all buffers" },
    {
      "<leader>th",
      function()
        require("telescope.builtin").colorscheme({
          enable_preview = true,
          ignore_builtins = true,
        })
      end,
      desc = "Telescope switch themes",
    },
  },
}

