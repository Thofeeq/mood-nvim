
-- setup user files
require('mood-scripts.install-config').setup()

-- vim script functions
require('helpers.vim-functions').setup()
require('helpers.term-functions').setup()

require('core.plugins').setup()
require('core.autocmds').setup()
require('core.set').setup()
require('core.globals').setup()
require('core.mappings').setup()

-- mood
require('mood-scripts.quick-consult').setup()

-- plugins
require('plugins.telescope').setup()
require('plugins.tree-sitter').setup {
	ensure_installed = {
		"yaml",
		"markdown",
		"comment",
		"css",
		"html",
		"javascript",
		"json",
		"lua",
		"php",
		"phpdoc",
		"regex",
		"ruby",
		"scss",
		"vim",
		"vue",
	},
	highlight = {
		enable = true,
		disable = { "html", "bash" },
	},
	indent = {
		enable = true,
	},
}
require('plugins.autopairs').setup()
require('plugins.yanky').setup()
require('plugins.dashboard_plugin').setup()
require('plugins.lualine').setup()
require('plugins.ctrlsf').setup()

-- user
require('user.lsp')
require('user.config')
require('user.debugger')
-- require('plugins.nvim-tree').set({
-- 	update_focused_file = {
-- 		enable      = true,
-- 		update_cwd  = false,
-- 		ignore_list = {}
-- 	}
-- })

require'nvim-tree'.setup {
	update_focused_file = {
		enable      = true,
		update_cwd  = true,
		ignore_list = {}
	}
}

-- startup
require('core.start').setup()



-- custom
require("lsp_lines").setup()
require('lsp_lines').toggle()
local db = require('dashboard')

db.custom_header = {
	'',
'████████╗██╗░░██╗░█████╗░███████╗███████╗███████╗░██████╗░',
'╚══██╔══╝██║░░██║██╔══██╗██╔════╝██╔════╝██╔════╝██╔═══██╗',
'░░░██║░░░███████║██║░░██║█████╗░░█████╗░░█████╗░░██║██╗██║',
'░░░██║░░░██╔══██║██║░░██║██╔══╝░░██╔══╝░░██╔══╝░░╚██████╔╝',
'░░░██║░░░██║░░██║╚█████╔╝██║░░░░░███████╗███████╗░╚═██╔═╝░',
'░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░╚═╝░░░░░╚══════╝╚══════╝░░░╚═╝░░░',
	'',
	'Version 3.0.1',
	'',
	''
}



require('windows').setup({
	autowidth = {			--		       |windows.autowidth|
		enable = true,
		winwidth = 1.4,			--		        |windows.winwidth|
		textwidth=1,
		filetype = {			--	      |windows.autowidth.filetype|
			help = 2,
		},
	},
	ignore = {				--			  |windows.ignore|
		buftype = { "quickfix" },
		filetype = { "NvimTree", "neo-tree", "undotree", "gundo" }
	},
	animation = {
		enable = true,
		duration = 300,
		fps = 30,
		easing = "in_out_sine"
	}
})

require("workspaces").setup()

require("scratch").setup {
	scratch_file_dir = vim.fn.stdpath("cache") .. "/scratch.nvim",  -- Where the scratch files will be saved
	filetypes = { "rb", "json", "xml", "go", "lua", "js", "py", "sh" },   -- filetypes to select from
}

vim.cmd("source ~/.config/nvim/startup.vim")

