local M = {}

M.setup = function()
	local groups = require("fluovibe.groups.highlights").setup()
	local plugin_groups = require("fluovibe.groups.plugins").setup()
	for group, setting in pairs(plugin_groups) do
		groups[group] = setting
	end
	for group, setting in pairs(groups) do
		vim.api.nvim_set_hl(0, group, setting)
	end
end

return M
