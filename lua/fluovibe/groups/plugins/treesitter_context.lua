local M = {}

local colors = require("fluovibe.palette")

M.setup = function(opts)
	local float_bg = opts and opts.transparency > 0 and "NONE" or colors.bg_dark
	return {
		TreesitterContext            = { bg = float_bg },
		TreesitterContextLineNumber  = { fg = colors.comment, bg = float_bg },
		TreesitterContextSeparator   = { fg = colors.separator },
		TreesitterContextBottom      = { underline = true, sp = colors.separator },
	}
end

return M
