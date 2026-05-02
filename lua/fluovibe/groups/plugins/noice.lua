local M = {}

local colors = require("fluovibe.palette")

M.setup = function(_opts)
	return {
		-- darken(yellow, 50) = "#7f6600"
		NoiceFormatProgressTodo  = { fg = colors.yellow, bg = "#7f6600" },
		NoiceFormatProgressDone  = { fg = colors.yellow, reverse = true },
		NoiceLspProgressSpinner  = { fg = colors.purple },
		NoiceLspProgressClient   = { fg = colors.purple },
		NoiceLspProgressTitle    = { link = "Title" },
	}
end

return M
