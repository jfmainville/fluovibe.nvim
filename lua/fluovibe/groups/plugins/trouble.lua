local M = {}

local colors = require("fluovibe.palette")

M.setup = function(opts)
	local float_bg = opts and opts.transparency > 0 and "NONE" or colors.bg_dark
	return {
		TroubleNormal    = { fg = colors.fg, bg = float_bg },
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
