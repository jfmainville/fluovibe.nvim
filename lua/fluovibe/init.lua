local M = {}

local defaults = {
	transparent = true,
}

local config = {}

M.setup = function(opts)
	config = vim.tbl_deep_extend("force", defaults, opts or {})
	M.load()
end

M.load = function()
	local opts = vim.tbl_deep_extend("force", defaults, config)

	local groups = require("fluovibe.groups.highlights").setup(opts)
	local plugin_groups = require("fluovibe.groups.plugins").setup(opts)
	for group, setting in pairs(plugin_groups) do
		groups[group] = setting
	end
	for group, setting in pairs(groups) do
		vim.api.nvim_set_hl(0, group, setting)
	end
end

return M
