local M = {}

local colors = require("fluovibe.palette")

M.setup = function(opts)
	local float_bg = opts and opts.transparent and "NONE" or colors.bg_dark
	return {
		NeoTreeNormal          = { fg = colors.fg, bg = float_bg },
		NeoTreeNormalNC        = { link = "NeoTreeNormal" },
		NeoTreeDotFile         = { fg = colors.comment },
		NeoTreeFileStats       = { fg = colors.comment },
		NeoTreeIndentMarker    = { fg = colors.comment },
		NeoTreeFileNameOpened  = { link = "Directory" },
		NeoTreeFloatBorder     = { link = "WinSeparator" },
		NeoTreeFloatTitle      = { link = "Title" },
		NeoTreeGitAdded        = { fg = colors.git_add },
		NeoTreeGitConflict     = { fg = colors.git_change },
		NeoTreeGitDeleted      = { fg = colors.git_delete },
		NeoTreeGitIgnored      = { fg = colors.comment },
		NeoTreeGitModified     = { fg = colors.git_change },
		NeoTreeGitUnstaged     = { fg = colors.git_change },
		NeoTreeGitUntracked    = { fg = colors.git_change },
		NeoTreeGitStaged       = { fg = colors.git_add },
	}
end

return M
