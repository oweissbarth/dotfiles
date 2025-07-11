vim.opt.nu = true

vim.opt.tabstop = 2
vim.opt.shiftwidth=2
vim.opt.softtabstop=2

vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.hlsearch = false

vim.opt.termguicolors= true

vim.g.mapleader = " "

vim.opt.conceallevel = 2

vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.filetype.add({
  pattern = {
    [".*Jenkinsfile"] = "groovy",
    ["Dockerfile.*"] = "dockerfile",
  }
})
