local M = {}

M.setup = function(_opts)
	return {
		-- darken(purple, 50) = "#57367c", darken(pink, 50) = "#7e0c4d"
		IblIndent = { fg = "#57367c", nocombine = true },
		IblScope  = { fg = "#7e0c4d", nocombine = true },
	}
end

return M
