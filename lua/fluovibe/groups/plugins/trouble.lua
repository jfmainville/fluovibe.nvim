local M = {}

local colors = require("fluovibe.palette")

M.setup = function()
	return {
		TroubleNormal    = { fg = colors.fg, bg = colors.bg_dark },
		TroubleNormalNC  = { link = "TroubleNormal" },
		TroubleText      = { fg = colors.fg },
		TroubleCount     = { fg = colors.pink, bold = true },
		TroubleIndent    = { fg = colors.comment },
		TroublePos       = { fg = colors.comment },
		TroubleSource    = { fg = colors.comment },
		TroubleCode      = { fg = colors.comment },
		TroubleDirectory = { fg = colors.yellow },
		TroubleFileName  = { fg = colors.fg },
		TroubleIconError   = { fg = colors.diag_error },
		TroubleIconWarning = { fg = colors.diag_warn },
		TroubleIconHint    = { fg = colors.diag_hint },
		TroubleIconInfo    = { fg = colors.diag_info },
		TroubleIconOther   = { fg = colors.comment },
	}
end

return M
