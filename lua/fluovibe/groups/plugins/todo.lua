local M = {}

local colors = require("fluovibe.palette")

M.setup = function(_opts)
	return {
		TodoBgTODO   = { fg = colors.bg, bg = colors.yellow, bold = true },
		TodoFgTODO   = { fg = colors.yellow },
		TodoSignTODO = { fg = colors.yellow },

		TodoBgFIX    = { fg = colors.bg, bg = colors.red, bold = true },
		TodoFgFIX    = { fg = colors.red },
		TodoSignFIX  = { fg = colors.red },

		TodoBgHACK   = { fg = colors.bg, bg = colors.orange, bold = true },
		TodoFgHACK   = { fg = colors.orange },
		TodoSignHACK = { fg = colors.orange },

		TodoBgWARN   = { fg = colors.bg, bg = colors.diag_warn, bold = true },
		TodoFgWARN   = { fg = colors.diag_warn },
		TodoSignWARN = { fg = colors.diag_warn },

		TodoBgNOTE   = { fg = colors.bg, bg = colors.cyan, bold = true },
		TodoFgNOTE   = { fg = colors.cyan },
		TodoSignNOTE = { fg = colors.cyan },

		TodoBgPERF   = { fg = colors.bg, bg = colors.purple, bold = true },
		TodoFgPERF   = { fg = colors.purple },
		TodoSignPERF = { fg = colors.purple },

		TodoBgTEST   = { fg = colors.bg, bg = colors.green, bold = true },
		TodoFgTEST   = { fg = colors.green },
		TodoSignTEST = { fg = colors.green },
	}
end

return M
