lvim.builtin.alpha.dashboard.section.header.val = require("niksingh710.header").dashboard()
table.insert(
	lvim.builtin.alpha.dashboard.section.buttons.entries,
	1,
	{ "SPC . l", "  Last Saved Session", "<CMD>SessionManager load_last_session<CR>" }
)
