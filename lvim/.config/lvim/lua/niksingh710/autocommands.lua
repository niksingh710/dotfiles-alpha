-- lvim.autocommands.custom_groups = {
-- 	{ "BufWritePost", "*", ":NvimTreeRefresh" },
-- }
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*",
	-- enable wrap mode for json files only
	command = ":NvimTreeRefresh",
})
