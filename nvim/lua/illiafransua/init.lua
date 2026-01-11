require("illiafransua.core.keymaps")
require("illiafransua.lazy_init")


-- Colorscheme

local theme_file = vim.fn.stdpath("data") .. "/colorscheme.txt"

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.fn.writefile({ vim.g.colors_name }, theme_file)
  end,
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local ok, lines = pcall(vim.fn.readfile, theme_file)
    if ok and lines[1] then
      vim.cmd.colorscheme(lines[1])
    end
  end,
})

