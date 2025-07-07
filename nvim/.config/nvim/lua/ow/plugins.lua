return{
  {"ibhagwan/fzf-lua", dependencies={"nvim-tree/nvim-web-devicons"}, opts={}},

  {"nvim-treesitter/nvim-treesitter", build=":TSUpdate"},
  {"catppuccin/nvim", name="catppuccin", priority=1000},
	
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'}, 
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},

  {"nvim-lualine/lualine.nvim", dependencies={"nvim-tree/nvim-web-devicons"}},
  {"j-hui/fidget.nvim"}, 
  {"petertriho/nvim-scrollbar"},

  {"m4xshen/autoclose.nvim"},
  
  {"NeogitOrg/neogit", dependencies={"nvim-lua/plenary.nvim", "sindrets/diffview.nvim", "nvim-telescope/telescope.nvim"}},
  {"lewis6991/gitsigns.nvim"},

  {"github/copilot.vim"},
  {"b0o/blender.nvim", dependencies={"MunifTanjim/nui.nvim", "grapp-dev/nui-components.nvim", "mfussenegger/nvim-dap", "LiadOz/nvim-dap-repl-highlights", "mhanberg/iter.nvim"}},

  {'linux-cultist/venv-selector.nvim', dependencies = { 'neovim/nvim-lspconfig', 'ibhagwan/fzf-lua', 'mfussenegger/nvim-dap-python' }, branch="regexp"},

  {"Civitasv/cmake-tools.nvim", dependencies= {"nvim-lua/plenary.nvim"}},

  {"epwalsh/obsidian.nvim"}
}
