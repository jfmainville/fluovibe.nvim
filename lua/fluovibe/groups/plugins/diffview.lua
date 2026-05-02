local M = {}

local colors = require("fluovibe.palette")

M.setup = function(_opts)
	return {
		DiffviewFilePanelTitle       = { fg = colors.yellow, bold = true },
		DiffviewFilePanelCounter     = { fg = colors.purple, bold = true },
		DiffviewFilePanelFileName    = { fg = colors.fg },
		DiffviewFilePanelInsertions  = { fg = colors.git_add },
		DiffviewFilePanelDeletions   = { fg = colors.git_delete },
		DiffviewFilePanelConflicts   = { fg = colors.git_change },
		DiffviewFolderName           = { fg = colors.yellow },
		DiffviewFolderSign           = { fg = colors.comment },
		DiffviewStatusAdded          = { fg = colors.git_add },
		DiffviewStatusCopied         = { fg = colors.cyan },
		DiffviewStatusDeleted        = { fg = colors.git_delete },
		DiffviewStatusModified       = { fg = colors.git_change },
		DiffviewStatusRenamed        = { fg = colors.yellow },
		DiffviewStatusUnmerged       = { fg = colors.orange },
		DiffviewStatusUnknown        = { fg = colors.comment },
		DiffviewStatusUntracked      = { fg = colors.comment },
		DiffviewNonText              = { fg = colors.comment },
	}
end

return M
