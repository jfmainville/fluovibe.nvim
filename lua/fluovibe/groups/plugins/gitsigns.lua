local M = {}

local colors = require("fluovibe.palette")

M.setup = function(_opts)
	return {
		GitSignsAdd    = { fg = colors.git_add },
		GitSignsChange = { fg = colors.git_change },
		GitSignsDelete = { fg = colors.git_delete },
	}
end

return M
