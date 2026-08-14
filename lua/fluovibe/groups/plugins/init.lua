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
	"fluovibe.groups.plugins.oil",
	"fluovibe.groups.plugins.codediff",
	"fluovibe.groups.plugins.atlas",
	"fluovibe.groups.plugins.fugitive",
	"fluovibe.groups.plugins.undotree",
	"fluovibe.groups.plugins.mason",
}

M.setup = function(opts)
	local groups = {}
	for _, plugin in ipairs(plugins) do
		for group, setting in pairs(require(plugin).setup(opts)) do
			groups[group] = setting
		end
	end
	return groups
end

return M
