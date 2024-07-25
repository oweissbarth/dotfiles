vim.g.mapleader = " "

-- telescope
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>p", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>f", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>o", telescope_builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>q", function() vim.lsp.buf.code_action({apply = true}) end, {})

-- obsidian.nvim
vim.keymap.set("n", "<leader>nd", function() vim.cmd("ObsidianToday") end)
vim.keymap.set("n", "<leader>ny", function() vim.cmd("ObsidianYesterday") end)
vim.keymap.set("n", "<leader>nf", function() vim.cmd("ObsidianSearch") end)
