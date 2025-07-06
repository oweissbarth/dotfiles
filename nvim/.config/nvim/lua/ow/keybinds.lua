vim.g.mapleader = " "

local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>p", fzf.files, {})
vim.keymap.set("n", "<leader>f", fzf.live_grep, {})
vim.keymap.set("n", "<leader>o", fzf.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>q", function() vim.lsp.buf.code_action({apply = true}) end, {})

-- obsidian.nvim
vim.keymap.set("n", "<leader>nd", function() vim.cmd("ObsidianToday") end)
vim.keymap.set("n", "<leader>ny", function() vim.cmd("ObsidianYesterday") end)
vim.keymap.set("n", "<leader>nf", function() vim.cmd("ObsidianSearch") end)
