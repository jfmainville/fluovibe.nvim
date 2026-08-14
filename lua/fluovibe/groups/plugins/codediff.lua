local M = {}

local colors = require("fluovibe.palette")

-- codediff.nvim derives CodeDiffLineInsert/Delete/Move and their character level
-- counterparts from the DiffAdd, DiffDelete and DiffChange backgrounds on every
-- ColorScheme event, so those groups are intentionally left to the plugin.
M.setup = function(opts)
	local float_bg = opts and opts.transparent and "NONE" or colors.bg_dark
	return {
		CodeDiffFiller                 = { fg = colors.comment },
		CodeDiffMoveFrom               = { fg = colors.separator },
		CodeDiffMoveTo                 = { fg = colors.cyan },

		CodeDiffStatusAdded            = { fg = colors.git_add },
		CodeDiffStatusModified         = { fg = colors.git_change },
		CodeDiffStatusDeleted          = { fg = colors.git_delete },
		CodeDiffStatusRenamed          = { fg = colors.yellow },
		CodeDiffStatusUntracked        = { fg = colors.comment },
		CodeDiffStatusConflict         = { fg = colors.orange },

		CodeDiffConflictSign           = { fg = colors.orange },
		CodeDiffConflictSignResolved   = { fg = colors.comment },
		CodeDiffConflictSignAccepted   = { fg = colors.git_add },
		CodeDiffConflictSignRejected   = { fg = colors.git_delete },

		CodeDiffExplorerSelected       = { link = "CursorLine" },
		CodeDiffExplorerTreeGroup      = { link = "Directory" },
		CodeDiffExplorerStatFiles      = { fg = colors.purple },
		CodeDiffExplorerStatInsertions = { fg = colors.git_add },
		CodeDiffExplorerStatDeletions  = { fg = colors.git_delete },
		CodeDiffExplorerStatBinary     = { link = "NonText" },
		ExplorerDirectorySmall         = { link = "Comment" },

		CodeDiffHistoryTitle           = { fg = colors.yellow, bg = float_bg, bold = true },

		CodeDiffHelpHeader             = { link = "Title" },
		CodeDiffHelpSection            = { fg = colors.purple, bold = true },
		CodeDiffHelpKey                = { fg = colors.pink },
		CodeDiffHelpSep                = { link = "NonText" },
		CodeDiffHelpDesc               = { fg = colors.fg },

		CodeDiffWelcomeLogo            = { fg = colors.pink, bold = true },
		CodeDiffWelcomeKey             = { fg = colors.cyan },
	}
end

return M
