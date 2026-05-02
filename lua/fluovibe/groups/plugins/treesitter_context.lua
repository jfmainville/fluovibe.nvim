local M = {}

local colors = require("fluovibe.palette")

M.setup = function()
	return {
		TreesitterContext            = { bg = colors.bg_dark },
		TreesitterContextLineNumber  = { fg = colors.comment, bg = colors.bg_dark },
		TreesitterContextSeparator   = { fg = colors.separator },
		TreesitterContextBottom      = { underline = true, sp = colors.separator },
	}
end

return M
