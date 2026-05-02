local M = {}

local colors = require("fluovibe.palette")

M.setup = function()
	return {
		TelescopeSelection      = { link = "CursorLine" },
		TelescopeSelectionCaret = { fg = colors.pink },
		TelescopeMultiSelection = { link = "Type" },
		TelescopeMultiIcon      = { fg = colors.pink },

		TelescopeNormal         = { fg = colors.fg, bg = colors.bg_dark },
		TelescopePreviewNormal  = { link = "TelescopeNormal" },
		TelescopePromptNormal   = { link = "TelescopeNormal" },
		TelescopeResultsNormal  = { link = "TelescopeNormal" },

		TelescopeBorder         = { link = "WinSeparator" },
		TelescopePromptBorder   = { link = "TelescopeBorder" },
		TelescopeResultsBorder  = { link = "TelescopeBorder" },
		TelescopePreviewBorder  = { link = "TelescopeBorder" },

		-- blend(yellow, bg_dark, 0.2) = "#503e26"
		TelescopeTitle          = { fg = colors.yellow, bg = "#503e26" },
		TelescopePromptTitle    = { link = "TelescopeTitle" },
		TelescopeResultsTitle   = { link = "TelescopeTitle" },
		TelescopePreviewTitle   = { link = "TelescopeTitle" },

		TelescopePromptCounter  = { link = "NonText" },
		TelescopeMatching       = { link = "IncSearch" },
		TelescopePromptPrefix   = { fg = colors.pink },
	}
end

return M
