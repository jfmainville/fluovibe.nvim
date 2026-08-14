local M = {}

local colors = require("fluovibe.palette")

M.setup = function(_opts)
	return {
		UndotreeNode        = { fg = colors.cyan },
		UndotreeNodeCurrent = { fg = colors.pink, bold = true },
		UndotreeCurrent     = { fg = colors.pink, bold = true },
		UndotreeNext        = { fg = colors.purple },
		UndotreeHead        = { fg = colors.orange },
		UndotreeBranch      = { fg = colors.comment },
		UndotreeSeq         = { fg = colors.comment },
		UndotreeFirstNode   = { fg = colors.green, bold = true },
		UndotreeTimeStamp   = { fg = colors.comment, italic = true },
		UndotreeSavedSmall  = { fg = colors.yellow },
		UndotreeSavedBig    = { fg = colors.green, bold = true },
		UndotreeHelp        = { fg = colors.comment, italic = true },
		UndotreeHelpKey     = { fg = colors.pink },
		UndotreeHelpTitle   = { link = "Title" },
	}
end

return M
