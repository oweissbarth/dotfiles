vim.g.mapleader = " "

local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>p", fzf.files, {})
vim.keymap.set("n", "<leader>f", fzf.live_grep, {})
vim.keymap.set("n", "<leader>o", fzf.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>q", function() vim.lsp.buf.code_action({apply = true}) end, {})

-- obsidian.nvim
vim.keymap.set("n", "<leader>nd", function() vim.cmd("Obsidian today") end)
vim.keymap.set("n", "<leader>ny", function() vim.cmd("Obsidian yesterday") end)
vim.keymap.set("n", "<leader>nf", function() vim.cmd("Obsidian search") end)
vim.keymap.set("n", "<leader>nt", function() vim.cmd(":e ~/notes/Todo.md") end)
