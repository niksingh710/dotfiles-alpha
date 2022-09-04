lvim.builtin.which_key.mappings["C"] = {
	name = "+Coc",
	d = { "<cmd>CocDiagnostics<cr>", "Diagnostics Coc" },
	-- f = { "<cmd>CocFix<cr>", "Fix" },
	f = { "<plug>(coc-fix-current)", "Fix" },
	h = { "<cmd>call CocAction('doHover')<cr>", "hover" },
}
lvim.builtin.which_key.mappings["S"] = {
	name = "+Split",
	v = { "<cmd>vs<cr>", "Vertical Split" },
	h = { "<cmd>split<cr>", "Horizontal Split" },
}
lvim.builtin.which_key.mappings["."] = {
	name = "+Session",
	l = { "<cmd>SessionManager load_last_session<cr>", "Load Last Session" },
	L = { "<cmd>SessionManager load_session<cr>", "List sessions to load" },
	D = { "<cmd>SessionManager delete_session<cr>", "List sessions to delete" },
	s = { "<cmd>SessionManager save_current_session<cr>", "Save the current sessions" },
	d = { "<cmd>SessionManager load_current_dir_session<cr>", "Load Current Dir Session" },
}

lvim.builtin.which_key.mappings["m"] = { "<cmd>MinimapToggle<cr>", "MiniMap Toggle" }
lvim.builtin.which_key.mappings["o"] = { "<cmd>SymbolsOutline<cr>", "Symbols Outline" }
lvim.builtin.which_key.mappings["M"] = {
	name = "+MarkDown Preview",
	p = { "<cmd>Glow<cr>", "MarkDown Preview (Glow)" },
	b = { "<cmd>MarkdownPreviewToggle<cr>", "MarkDown Preview (Browser)" },
}
lvim.builtin.which_key.mappings["t"] = {
	name = "+Trouble Check",
	q = { "<cmd>TroubleToggle quickfix<cr>", "Quick Fix" },
	l = { "<cmd>TroubleToggle lsp_references<cr>", "Lsp Reference" },
	t = { "<cmd>TroubleToggle <cr>", "Toggle" },
}
