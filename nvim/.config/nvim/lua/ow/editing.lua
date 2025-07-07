require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
})


require("autoclose").setup()

-- Auto indent when switching to insert mode on an empty line
vim.keymap.set('n', 'i', function ()
  return string.match(vim.api.nvim_get_current_line(), '%g') == nil
         and 'cc' or 'i'
end, {expr=true, noremap=true})

require("cmp").setup({
  mapping = {
    ["<CR>"] = require("cmp").mapping.confirm({ select = true }),
  }
})
