lvim.plugins = {
	{ "mg979/vim-visual-multi" },
	{
		"folke/tokyonight.nvim",
		config = function()
			vim.cmd("let g:tokyonight_style = 'night'")
		end,
	},
	{ "neoclide/coc.nvim", branch = "release", run = "yarn install --frozen-lockfile" },
	{ "wakatime/vim-wakatime" },
	{
		"wfxr/minimap.vim",
		run = "cargo install --locked code-minimap",
		cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
		config = function()
			vim.cmd("let g:minimap_width = 10")
			vim.cmd("let g:minimap_auto_start = 1")
			vim.cmd("let g:minimap_auto_start_win_enter = 1")
		end,
	},
	{
		"nacro90/numb.nvim",
		event = "BufRead",
		config = function()
			require("numb").setup({
				show_numbers = true,
				show_cursorline = true,
			})
		end,
	},
	{
		"npxbr/glow.nvim",
		ft = { "markdown" },
		config = function()
			vim.cmd("let g:glow_border = 'rounded'")
			vim.cmd("let g:glow_use_pager = v:true")
		end,
	},
	{
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("lsp_signature").setup()
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				"*",
				DEFAULT_OPTIONS = {
					RGB = true, -- #RGB hex codes #123
					RRGGBB = true, -- #RRGGBB hex codes #223344
					names = true, -- "Name" codes like Blue,BLUE,blue
					RRGGBBAA = true, -- #RRGGBBAA hex codes #44556611
					rgb_fn = true, -- CSS rgb() and rgba() functions rgb(22,33,44)
					hsl_fn = true, -- CSS hsl() and hsla() functions
					css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
					css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
					-- Available modes: foreground, background
					mode = "background", -- Set the display mode.
				},
			})
		end,
	},
	{ "p00f/nvim-ts-rainbow" },
	{ "windwp/nvim-ts-autotag" },
	{
		"aca/emmet-ls",
		config = function()
			local lspconfig = require("lspconfig")
			local configs = require("lspconfig/configs")

			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true
			capabilities.textDocument.completion.completionItem.resolveSupport = {
				properties = {
					"documentation",
					"detail",
					"additionalTextEdits",
				},
			}

			if not lspconfig.emmet_ls then
				configs.emmet_ls = {
					default_config = {
						cmd = { "emmet-ls", "--stdio" },
						filetypes = {
							"html",
							"css",
							"javascript",
							"typescript",
							"eruby",
							"typescriptreact",
							"javascriptreact",
							"svelte",
							"vue",
							"md",
						},
						settings = {},
					},
				}
			end
			lspconfig.emmet_ls.setup({ capabilities = capabilities })
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		config = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{ "simrat39/symbols-outline.nvim" },
	{
		"Shatur/neovim-session-manager",
		requres = "nvim-lua/plenary.nvim",
		config = function()
			local Path = require("plenary.path")
			require("session_manager").setup({
				sessions_dir = Path:new(vim.fn.stdpath("data"), "sessions"), -- The directory where the session files will be saved.
				path_replacer = "__", -- The character to which the path separator will be replaced for session files.
				colon_replacer = "++", -- The character to which the colon symbol will be replaced for session files.
				autoload_mode = require("session_manager.config").AutoloadMode.Disabled, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
				autosave_last_session = true, -- Automatically save last session on exit and on session switch.
				autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
				autosave_ignore_filetypes = { -- All buffers of these file types will be closed before the session is saved.
					"gitcommit",
				},
				autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
				max_path_length = 80, -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- This is your opts table
			-- require("telescope").setup({
			-- 	extensions = {
			-- 		["ui-select"] = {
			-- 			require("telescope.themes").get_dropdown({
			-- 				-- even more opts
			-- 			}),

			-- 			-- pseudo code / specification for writing custom displays, like the one
			-- 			-- for "codeactions"
			-- 			-- specific_opts = {
			-- 			--   [kind] = {
			-- 			--     make_indexed = function(items) -> indexed_items, width,
			-- 			--     make_displayer = function(widths) -> displayer
			-- 			--     make_display = function(displayer) -> function(e)
			-- 			--     make_ordinal = function(e) -> string
			-- 			--   },
			-- 			--   -- for example to disable the custom builtin "codeactions" display
			-- 			--      do the following
			-- 			--   codeactions = false,
			-- 			-- }
			-- 		},
			-- 	},
			-- })
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},
}
