return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local mode = {
        "mode",
        fmt = function(str)
          return "✨Bestie " .. str
          -- return ' ' .. str:sub(1, 1) -- displays only the first character of the mode
        end,
      }

      opts.sections.lualine_a = { mode }
    end,
  },
}
