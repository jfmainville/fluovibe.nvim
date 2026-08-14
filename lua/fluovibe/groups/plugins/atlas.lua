local M = {}

local colors = require("fluovibe.palette")

-- atlas.nvim colors labels, authors and repositories by hashing the identifier
-- into an eleven slot palette, so every slot has to stay visually distinct.
local dynamic = {
	colors.cyan,
	colors.separator,
	colors.green,
	"#00FFA3",
	colors.yellow,
	colors.orange,
	colors.pink,
	colors.purple,
	"#FF0055",
	"#7DF9FF",
	colors.white,
}

local function build(opts)
	local float_bg = opts and opts.transparent and "NONE" or colors.bg_dark

	local groups = {
		-- Panels and chrome
		AtlasBorder                 = { link = "WinSeparator" },
		AtlasTabInactive            = { fg = colors.comment, bg = colors.bg_dark },
		AtlasPanelHeaderBg          = { bg = colors.bg_dark },
		AtlasColumnHeader           = { fg = colors.purple, bold = true },
		AtlasSectionHeader          = { fg = colors.purple, bold = true, underline = true },
		AtlasChipActive             = { fg = colors.bg, bg = colors.cyan, bold = true },

		-- Body text
		AtlasText                   = { fg = colors.fg },
		AtlasTextMuted              = { fg = colors.comment },
		AtlasTextMutedItalic        = { fg = colors.comment, italic = true },
		AtlasTextMutedStrikethrough = { fg = colors.comment, strikethrough = true },
		AtlasTextPositive           = { fg = colors.green, bold = true },
		AtlasTextNote               = { fg = colors.pink, bold = true },
		AtlasTextWarning            = { fg = colors.yellow, bold = true },

		-- Logs
		AtlasLogInfo                = { fg = colors.cyan, bold = true },
		AtlasLogWarn                = { fg = colors.yellow, bold = true },
		AtlasLogError               = { fg = colors.red, bold = true },

		-- Footer bar
		AtlasFooterBackground       = { bg = float_bg },
		AtlasFooterText             = { fg = colors.comment, bg = float_bg },
		AtlasFooterInfo             = { fg = colors.cyan, bg = float_bg, bold = true },
		AtlasFooterNote             = { fg = colors.pink, bg = float_bg, bold = true },
		AtlasFooterWarning          = { fg = colors.yellow, bg = float_bg, bold = true },
		AtlasFooterError            = { fg = colors.red, bg = float_bg, bold = true },
		AtlasFooterSuccess          = { fg = colors.green, bg = float_bg, bold = true },

		-- Pull request states
		AtlasPROpen                 = { fg = colors.green, bold = true },
		AtlasPRMerged               = { fg = colors.purple, bold = true },
		AtlasPRDeclined             = { fg = colors.red, bold = true },
		AtlasPRDraft                = { fg = colors.comment, bold = true },
		AtlasPROpenChip             = { fg = colors.bg, bg = colors.green, bold = true },
		AtlasPRMergedChip           = { fg = colors.bg, bg = colors.purple, bold = true },
		AtlasPRDeclinedChip         = { fg = colors.bg, bg = colors.red, bold = true },
		AtlasPRDraftChip            = { fg = colors.bg, bg = colors.yellow, bold = true },

		-- Pipelines
		AtlasPipelineLinkSuccess    = { fg = colors.green },
		AtlasPipelineLinkFailed     = { fg = colors.red },
		AtlasPipelineLinkInProgress = { fg = colors.yellow },
		AtlasPipelineLinkMuted      = { fg = colors.comment },

		-- Diffs
		AtlasDiffAddLine            = { link = "DiffAdd" },
		AtlasDiffRemoveLine         = { link = "DiffDelete" },

		-- Provider headers
		AtlasGitHubTheme            = { fg = colors.bg, bg = colors.cyan, bold = true },
		AtlasGitLabTheme            = { fg = colors.bg, bg = colors.orange, bold = true },
		AtlasBitbucketTheme         = { fg = colors.bg, bg = colors.separator, bold = true },
		AtlasJiraTheme              = { fg = colors.bg, bg = colors.separator, bold = true },
		AtlasGHIssuesTheme          = { link = "AtlasGitHubTheme" },
		AtlasGLIssuesTheme          = { link = "AtlasGitLabTheme" },

		-- GitHub pull requests
		AtlasGitHubPROpen           = { fg = colors.bg, bg = colors.green, bold = true },
		AtlasGitHubPRMerged         = { fg = colors.bg, bg = colors.purple, bold = true },
		AtlasGitHubPRClosed         = { fg = colors.bg, bg = colors.red, bold = true },
		AtlasGitHubPRDraft          = { fg = colors.bg, bg = colors.comment, bold = true },

		-- GitLab merge requests
		AtlasGLPROpen               = { fg = colors.green, bold = true },
		AtlasGLPRMerged             = { fg = colors.purple, bold = true },
		AtlasGLPRClosed             = { fg = colors.red, bold = true },
		AtlasGLPRDraft              = { fg = colors.comment, bold = true },
		AtlasGLPRRef                = { fg = colors.orange, bold = true },

		-- Bitbucket pull requests
		AtlasBitbucketPROpen        = { fg = colors.bg, bg = colors.separator, bold = true },
		AtlasBitbucketPRMerged      = { fg = colors.bg, bg = colors.green, bold = true },
		AtlasBitbucketPRDeclined    = { fg = colors.bg, bg = colors.red, bold = true },
		AtlasBitbucketPRDraft       = { fg = colors.bg, bg = colors.yellow, bold = true },

		-- GitHub issues
		AtlasGHIssueOpen            = { fg = colors.green, bold = true },
		AtlasGHIssueClosed          = { fg = colors.purple, bold = true },
		AtlasGHIssueOpenChip        = { fg = colors.bg, bg = colors.green, bold = true },
		AtlasGHIssueClosedChip      = { fg = colors.bg, bg = colors.purple, bold = true },
		AtlasGHIssueKey             = { fg = colors.cyan, bold = true },
		AtlasGHIssueChipRepo        = { fg = colors.bg, bg = colors.cyan, bold = true },

		-- GitLab issues
		AtlasGLIssueOpen            = { fg = colors.green, bold = true },
		AtlasGLIssueClosed          = { fg = colors.red, bold = true },
		AtlasGLIssueOpenChip        = { fg = colors.bg, bg = colors.green, bold = true },
		AtlasGLIssueClosedChip      = { fg = colors.bg, bg = colors.red, bold = true },
		AtlasGLIssueKey             = { fg = colors.orange, bold = true },

		-- Jira issues
		AtlasJiraKey                = { fg = colors.separator, bold = true },
		AtlasJiraTitle              = { fg = colors.pink, bold = true },
		AtlasJiraEpic               = { fg = colors.purple, bold = true },
		AtlasJiraChipStoryPoints    = { fg = colors.bg, bg = colors.pink, bold = true },
		AtlasJiraChipDueDate        = { fg = colors.bg, bg = colors.yellow, bold = true },
		AtlasJiraChipParent         = { fg = colors.bg, bg = colors.separator, bold = true },
		AtlasProjectKey             = { fg = colors.purple, bold = true },
	}

	for index, color in ipairs(dynamic) do
		groups[string.format("AtlasDynColor%02d", index)] = { fg = color }
		groups[string.format("AtlasDynBgColor%02d", index)] = { fg = colors.bg, bg = color }
	end

	return groups
end

-- atlas.nvim re-applies its own hardcoded highlights every time a view is
-- opened, without `default = true`, so the colorscheme has to claim them back
-- once the plugin is done drawing.
local function reclaim(opts)
	local augroup = vim.api.nvim_create_augroup("FluovibeAtlas", { clear = true })
	local function apply()
		for group, setting in pairs(build(opts)) do
			vim.api.nvim_set_hl(0, group, setting)
		end
	end

	vim.api.nvim_create_autocmd({ "FileType", "BufWinEnter" }, {
		group = augroup,
		callback = function(event)
			if not vim.bo[event.buf].filetype:match("^atlas") then
				return
			end
			vim.schedule(apply)
		end,
	})

	vim.api.nvim_create_autocmd("User", {
		group = augroup,
		pattern = "Atlas*",
		callback = function()
			vim.schedule(apply)
		end,
	})
end

M.setup = function(opts)
	reclaim(opts)
	return build(opts)
end

return M
