local M = {}

local colors = require("fluovibe.palette")

M.setup = function(_opts)
	return {
		fugitiveHeader            = { fg = colors.purple, bold = true },
		fugitiveHeading           = { fg = colors.orange, bold = true },
		fugitiveHelpHeader        = { link = "fugitiveHeader" },
		fugitiveHelpTag           = { fg = colors.comment },
		fugitiveHash              = { fg = colors.yellow },
		fugitiveSymbolicRef       = { fg = colors.cyan, bold = true },
		fugitiveCount             = { fg = colors.purple },
		fugitiveInstruction       = { fg = colors.pink },
		fugitiveStop              = { fg = colors.diag_error },
		fugitiveModifier          = { fg = colors.git_change },

		fugitiveStagedHeading     = { fg = colors.git_add, bold = true },
		fugitiveStagedModifier    = { fg = colors.git_add },
		fugitiveUnstagedHeading   = { fg = colors.git_change, bold = true },
		fugitiveUnstagedModifier  = { fg = colors.git_change },
		fugitiveUntrackedHeading  = { fg = colors.comment, bold = true },
		fugitiveUntrackedModifier = { fg = colors.comment },

		diffAdded                 = { fg = colors.git_add, bg = colors.diff_add },
		diffRemoved               = { fg = colors.git_delete, bg = colors.diff_delete },
		diffChanged               = { fg = colors.git_change, bg = colors.diff_change },
		diffFile                  = { fg = colors.cyan, bold = true },
		diffNewFile               = { fg = colors.git_add },
		diffOldFile               = { fg = colors.git_delete },
		diffIndexLine             = { fg = colors.comment },
		diffLine                  = { fg = colors.purple },
		diffSubname               = { fg = colors.comment },
	}
end

return M
