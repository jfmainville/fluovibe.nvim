local M = {}

local colors = require("fluovibe.palette")

M.setup = function(_opts)
	return {
		OilDir                    = { link = "Directory" },
		OilDirIcon                = { link = "OilDir" },
		OilFile                   = { fg = colors.fg },
		OilLink                   = { fg = colors.cyan, underline = true },
		OilLinkTarget             = { fg = colors.comment },
		OilOrphanLink             = { fg = colors.diag_error, underline = true },
		OilOrphanLinkTarget       = { fg = colors.diag_error },
		OilSocket                 = { link = "Keyword" },
		OilEmpty                  = { fg = colors.comment },

		OilHidden                 = { fg = colors.comment },
		OilDirHidden              = { link = "OilHidden" },
		OilFileHidden             = { link = "OilHidden" },
		OilLinkHidden             = { link = "OilHidden" },
		OilLinkTargetHidden       = { link = "OilHidden" },
		OilOrphanLinkHidden       = { link = "OilHidden" },
		OilOrphanLinkTargetHidden = { link = "OilOrphanLinkTarget" },
		OilSocketHidden           = { link = "OilHidden" },

		OilCreate                 = { fg = colors.git_add },
		OilRestore                = { link = "OilCreate" },
		OilDelete                 = { fg = colors.git_delete },
		OilPurge                  = { link = "OilDelete" },
		OilTrash                  = { link = "OilDelete" },
		OilTrashSourcePath        = { fg = colors.comment },
		OilMove                   = { fg = colors.git_change },
		OilCopy                   = { fg = colors.diag_hint },
		OilChange                 = { fg = colors.purple },
	}
end

return M
