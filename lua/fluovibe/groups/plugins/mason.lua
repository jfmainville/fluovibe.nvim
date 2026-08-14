local M = {}

local colors = require("fluovibe.palette")

M.setup = function(opts)
	local transparent = opts and opts.transparent
	local float_bg = transparent and "NONE" or colors.bg_dark
	return {
		MasonNormal                      = { fg = colors.fg, bg = float_bg },
		MasonBackdrop                    = { bg = transparent and "NONE" or colors.bg },
		MasonHeader                      = { fg = colors.bg, bg = colors.pink, bold = true },
		MasonHeaderSecondary             = { fg = colors.bg, bg = colors.cyan, bold = true },

		MasonHighlight                   = { fg = colors.cyan },
		MasonHighlightBlock              = { fg = colors.bg, bg = colors.cyan },
		MasonHighlightBlockBold          = { fg = colors.bg, bg = colors.cyan, bold = true },

		MasonHighlightSecondary          = { fg = colors.purple },
		MasonHighlightBlockSecondary     = { fg = colors.bg, bg = colors.purple },
		MasonHighlightBlockBoldSecondary = { fg = colors.bg, bg = colors.purple, bold = true },

		MasonMuted                       = { fg = colors.comment },
		MasonMutedBlock                  = { fg = colors.bg, bg = colors.comment },
		MasonMutedBlockBold              = { fg = colors.bg, bg = colors.comment, bold = true },

		MasonLink                        = { link = "MasonHighlight" },
		MasonError                       = { fg = colors.diag_error },
		MasonWarning                     = { fg = colors.diag_warn },
		MasonHeading                     = { fg = colors.orange, bold = true },
	}
end

return M
