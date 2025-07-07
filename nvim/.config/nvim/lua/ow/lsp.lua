local lsp_zero = require('lsp-zero')
lsp_zero.preset("recommended")

local cmp = require("cmp")
cmp.setup{
  window = {
    completion = {
      border = "single"
    },
    documentation = {
      border = "single"
    }
  }
}
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 2000,
  },
  servers = {
    ["clangd"] = {"cpp"},
    ["qmlls"] = {"qml"},
  },
})

vim.diagnostic.config({ virtual_text  = false})
require('tiny-inline-diagnostic').setup()

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {"clangd", "rust_analyzer", "pyright", "cmake"},
  handlers = {
    lsp_zero.default_setup,
  },
})
require('lspconfig').qmlls.setup{}
