local M = {}

local colors = require("fluovibe.palette")

M.setup = function(opts)
	local float_bg = opts and opts.transparency > 0 and "NONE" or colors.bg_dark
	return {
		AerialNormal    = { fg = colors.fg, bg = float_bg },
		AerialNormalNC  = { link = "AerialNormal" },
		AerialLine      = { link = "CursorLine" },
		AerialLineNC    = { link = "CursorLine" },
		AerialGuide     = { fg = colors.comment },

		AerialArray         = { link = "Type" },
		AerialBoolean       = { link = "Boolean" },
		AerialClass         = { link = "Type" },
		AerialConstant      = { link = "Constant" },
		AerialConstructor   = { link = "Function" },
		AerialEnum          = { link = "Type" },
		AerialEnumMember    = { link = "Constant" },
		AerialEvent         = { link = "Function" },
		AerialField         = { fg = colors.cyan },
		AerialFile          = { fg = colors.fg },
		AerialFunction      = { link = "Function" },
		AerialInterface     = { link = "Type" },
		AerialKey           = { link = "Keyword" },
		AerialMethod        = { link = "Function" },
		AerialModule        = { link = "Type" },
		AerialNamespace     = { fg = colors.cyan },
		AerialNull          = { link = "Constant" },
		AerialNumber        = { link = "Number" },
		AerialObject        = { link = "Type" },
		AerialOperator      = { link = "Operator" },
		AerialPackage       = { link = "Type" },
		AerialProperty      = { link = "Identifier" },
		AerialString        = { link = "String" },
		AerialStruct        = { link = "Type" },
		AerialTypeParameter = { link = "Type" },
		AerialVariable      = { link = "Identifier" },
	}
end

return M
