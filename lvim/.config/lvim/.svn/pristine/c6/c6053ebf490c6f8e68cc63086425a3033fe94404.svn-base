local theme = "tokyonight"

lvim.log.level = "warn"
lvim.format_on_save = true
lvim.transparent_window = true

vim.cmd("let g:tokyonight_style = 'night'")
lvim.colorscheme = theme
lvim.builtin.lualine.options.theme = theme

lvim.leader = "space"

lvim.builtin.alpha.active = true
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.cmp.experimental.ghost_text = false
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	"tsx",
	"css",
	"rust",
	"java",
	"yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.lsp.automatic_servers_installation = true

-- To load specific servers on single file format
-- local server_opts = {
--   single_file_support = true,
-- }
-- local servers = {
--   "gopls",
--   "tsserver",
--   "pyright",
--   "jdtls",
--   "prosemd_lsp",
--   "bashls",
-- }
-- for _, v in ipairs(servers) do
--   require("lvim.lsp.manager").setup(v, server_opts)
-- end
