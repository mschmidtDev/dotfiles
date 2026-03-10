return {
    {
        "williamboman/mason.nvim",
		"stevearc/conform.nvim",
		"zapling/mason-conform.nvim",
    },
    {
        'goolord/alpha-nvim',
    },
    {
		'neovim/nvim-lspconfig',
    },
    {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = {
		    'nvim-lua/plenary.nvim',
			'nvim-treesitter/nvim-treesitter',
		},
    },
	{
		'rmagatti/auto-session',
		lazy = false,
		
		---enables autocomplete for opts
		---@module "auto-session"
		---@type AutoSession.Config
		opts = {
		    suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
		    -- log_level = 'debug',
        },
    },
	{
		'romgrk/barbar.nvim',
		dependencies = {
		    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
		    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		    -- animation = true,
            -- insert_at_start = true,
            -- …etc.
		},
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
	},
}
