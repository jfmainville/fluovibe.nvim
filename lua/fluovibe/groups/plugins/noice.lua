local M = {}

local colors = require("fluovibe.palette")

M.setup = function(_opts)
	return {
		NoiceFormatProgressTodo  = { fg = colors.yellow, bg = "#696D12" },
		NoiceFormatProgressDone  = { fg = colors.yellow, reverse = true },
		NoiceLspProgressSpinner  = { fg = colors.purple },
		NoiceLspProgressClient   = { fg = colors.purple },
		NoiceLspProgressTitle    = { link = "Title" },
		NoiceCmdlinePopupBorder  = { link = "FloatBorder" },
	}
end

return M
