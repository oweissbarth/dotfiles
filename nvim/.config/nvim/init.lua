require("set")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

require("catppuccin").setup({
  custom_highlights = function(colors)
    return{
      CmpBorder = {fg = colors.surface2}
    }
  end,
  flavor= "frappe",
  background = {
    light = "frappe",
    dark = "frappe"
  },
  transparent_background=true,
  integrations = {
    cmp = true,
    treesitter = true,
    fidget = true

  }
})
vim.cmd.colorscheme "catppuccin"

vim.cmd [[
augroup kitty_mp
  autocmd!
  au VimLeave * :silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=default
  au VimEnter * :silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=0
augroup EN
]]

require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
})


local lsp_zero = require('lsp-zero')
lsp_zero.preset("recommended")

local cmp = require("cmp")
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {"clangd", "rust_analyzer", "pyright"},
  handlers = {
    lsp_zero.default_setup,
  },
})

require("lualine").setup({
  options = {
    theme = "catppuccin"
  }
})
require("scrollbar").setup()
require("fidget").setup({
  notification = {
    window = {
      winblend = 0
    }
  }
})

require("autoclose").setup()

-- Auto indent when switching to insert mode on an empty line
vim.keymap.set('n', 'i', function ()
  return string.match(vim.api.nvim_get_current_line(), '%g') == nil
         and 'cc' or 'i'
end, {expr=true, noremap=true})
