local options = {
	title = true,
	autoindent = true,
	hlsearch = true,
	showtabline = 2,
	tabstop = 2,
	shiftwidth = 2,
	number= true,
	relativenumber = true,
	pumblend = 25,
	termguicolors = true,
	backup = false,
	showcmd = true,
	cmdheight = 1,
	laststatus = 2,
	expandtab = true,
	scrolloff = 10,
	shell = 'fish',
	inccommand = 'split',
	ignorecase = true,
	smarttab = true,
	breakindent = true,
	ai = true,
	si = true,
	wrap = false,
	backspace = 'start,eol,indent',
  clipboard="unnamed",
}

for k,v in pairs(options) do
	vim.opt[k] = v
end
