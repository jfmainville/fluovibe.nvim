local M = {}

local colors = require("fluovibe.palette")

M.setup = function(opts)
	local transparent = opts and opts.transparent
	local float_bg    = transparent and "NONE" or colors.bg_dark
	local title_bg    = transparent and "NONE" or "#3a4628"
	return {
		TelescopeSelection      = { link = "CursorLine" },
		TelescopeSelectionCaret = { fg = colors.pink },
		TelescopeMultiSelection = { link = "Type" },
		TelescopeMultiIcon      = { fg = colors.pink },

		TelescopeNormal         = { fg = colors.fg, bg = float_bg },
		TelescopePreviewNormal  = { link = "TelescopeNormal" },
		TelescopePromptNormal   = { link = "TelescopeNormal" },
		TelescopeResultsNormal  = { link = "TelescopeNormal" },

		TelescopeBorder         = { link = "WinSeparator" },
		TelescopePromptBorder   = { link = "TelescopeBorder" },
		TelescopeResultsBorder  = { link = "TelescopeBorder" },
		TelescopePreviewBorder  = { link = "TelescopeBorder" },

		TelescopeTitle          = { fg = colors.yellow, bg = title_bg },
		TelescopePromptTitle    = { link = "TelescopeTitle" },
		TelescopeResultsTitle   = { link = "TelescopeTitle" },
		TelescopePreviewTitle   = { link = "TelescopeTitle" },

		TelescopePromptCounter  = { link = "NonText" },
		TelescopeMatching       = { link = "IncSearch" },
		TelescopePromptPrefix   = { fg = colors.pink },
	}
end

return M
