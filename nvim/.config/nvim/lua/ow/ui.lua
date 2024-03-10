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

local _border = "single"
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = _border
  }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = _border
  }
)

vim.diagnostic.config{
  float={border=_border}
}

require("lspconfig.ui.windows").default_options = {
  border = _border
}


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


