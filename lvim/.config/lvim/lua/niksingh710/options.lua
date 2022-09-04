local options = {
	cmdheight = 1,
	relativenumber = true,
	termguicolors = true, -- set term gui colors (most terminals support this)
	wrap = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
