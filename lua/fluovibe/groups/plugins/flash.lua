local M = {}

local colors = require("fluovibe.palette")

M.setup = function(_opts)
	return {
		FlashBackdrop    = { fg = colors.comment },
		FlashMatch       = { fg = colors.yellow, bold = true },
		FlashCurrent     = { fg = colors.yellow, bold = true },
		FlashLabel       = { fg = colors.white, bg = colors.pink, bold = true },
		FlashPrompt      = { fg = colors.comment },
		FlashPromptIcon  = { fg = colors.comment },
		FlashCursor      = { fg = colors.comment },
	}
end

return M
