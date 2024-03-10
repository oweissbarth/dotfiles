vim.g.mapleader = " "

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>p", builtin.find_files, {})
vim.keymap.set("n", "<leader>f", builtin.live_grep, {})
vim.keymap.set("n", "<leader>o", builtin.lsp_document_symbols, {})
