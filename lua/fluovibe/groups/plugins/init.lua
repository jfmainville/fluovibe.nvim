local M = {}

local plugins = {
	"fluovibe.groups.plugins.treesitter",
	"fluovibe.groups.plugins.lsp",
	"fluovibe.groups.plugins.telescope",
	"fluovibe.groups.plugins.gitsigns",
	"fluovibe.groups.plugins.neotree",
	"fluovibe.groups.plugins.ibl",
	"fluovibe.groups.plugins.noice",
	"fluovibe.groups.plugins.flash",
	"fluovibe.groups.plugins.rendermarkdown",
	"fluovibe.groups.plugins.blink",
	"fluovibe.groups.plugins.trouble",
	"fluovibe.groups.plugins.todo",
	"fluovibe.groups.plugins.aerial",
	"fluovibe.groups.plugins.diffview",
	"fluovibe.groups.plugins.treesitter_context",
}

M.setup = function()
	local groups = {}
	for _, plugin in ipairs(plugins) do
		for group, setting in pairs(require(plugin).setup()) do
			groups[group] = setting
		end
	end
	return groups
end

return M
