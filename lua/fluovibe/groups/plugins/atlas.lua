local M = {}

local colors = require("fluovibe.palette")

-- atlas.nvim colors labels, authors and repositories by hashing the identifier
-- into an eleven slot palette, so every slot has to stay visually distinct.
local dynamic = {
	colors.cyan,
	colors.blue,
	colors.green,
	"#C6FF00",
	colors.yellow,
	colors.orange,
	colors.pink,
	colors.purple,
	colors.red,
	"#7DF9FF",
	"#2E5BFF",
}

-- atlas.nvim registers its own defaults with `default = true` (and again on
-- every ColorScheme event), so the groups below win as long as their names
-- match the ones in atlas/ui/highlights.lua and atlas/formats/markdown/highlights.lua.
M.setup = function(opts)
	local float_bg = opts and opts.transparent and "NONE" or colors.bg_dark

	local groups = {
		-- Shared UI
		AtlasCodeBackground         = { bg = colors.bg_dark },
		AtlasTabInactive            = { fg = colors.comment, bg = colors.bg_dark },
		AtlasColumnHeader           = { fg = colors.purple, bold = true },
		AtlasSectionHeader          = { fg = colors.purple, bold = true, underline = true },
		AtlasBorder                 = { link = "FloatBorder" },
		AtlasTextMuted              = { fg = colors.comment },
		AtlasTextMutedStrikethrough = { fg = colors.comment, strikethrough = true },
		AtlasTextPositive           = { fg = colors.green, bold = true },
		AtlasTextNote               = { fg = colors.pink, bold = true },
		AtlasTextWarning            = { fg = colors.yellow, bold = true },

		-- Provider themes
		AtlasGitHubTheme            = { fg = colors.bg, bg = colors.cyan, bold = true },
		AtlasGitLabTheme            = { fg = colors.bg, bg = colors.orange, bold = true },
		AtlasBitbucketTheme         = { fg = colors.bg, bg = colors.blue, bold = true },
		AtlasJiraTheme              = { fg = colors.bg, bg = colors.blue, bold = true },

		-- Chips
		AtlasChipActive             = { fg = colors.bg, bg = colors.pink, bold = true },
		AtlasRelatedChip            = { fg = colors.fg, bg = colors.selection, bold = true },

		-- Issues and Jira fields
		AtlasIssueOpen              = { fg = colors.green, bold = true },
		AtlasIssueClosed            = { fg = colors.purple, bold = true },
		AtlasIssueOpenChip          = { fg = colors.bg, bg = colors.green, bold = true },
		AtlasIssueClosedChip        = { fg = colors.bg, bg = colors.purple, bold = true },
		AtlasJiraKey                = { fg = colors.blue, bold = true },
		AtlasJiraEpic               = { fg = colors.purple, bold = true },
		AtlasJiraChipStoryPoints    = { fg = colors.bg, bg = colors.pink, bold = true },
		AtlasJiraChipDueDate        = { fg = colors.bg, bg = colors.yellow, bold = true },
		AtlasJiraChipParent         = { link = "AtlasJiraTheme" },

		-- Pull requests
		AtlasPROpen                 = { fg = colors.green, bold = true },
		AtlasPRMerged               = { fg = colors.purple, bold = true },
		AtlasPRDeclined             = { fg = colors.red, bold = true },
		AtlasPRDraft                = { fg = colors.comment, bold = true },
		AtlasPROpenChip             = { fg = colors.bg, bg = colors.green, bold = true },
		AtlasPRMergedChip           = { fg = colors.bg, bg = colors.purple, bold = true },
		AtlasPRDeclinedChip         = { fg = colors.bg, bg = colors.red, bold = true },
		AtlasPRDraftChip            = { fg = colors.bg, bg = colors.comment, bold = true },

		-- Logs
		AtlasLogInfo                = { fg = colors.blue, bold = true },
		AtlasLogWarn                = { fg = colors.yellow, bold = true },
		AtlasLogError               = { fg = colors.red, bold = true },
		AtlasLogErrorLine           = { link = "DiagnosticVirtualTextError" },
		AtlasLogGroup               = { fg = colors.pink, bg = colors.cursorline, bold = true },
		AtlasLogCommand             = { fg = colors.cyan },
		AtlasLogDebug               = { fg = colors.comment },

		-- Footer
		-- A group holding only `bg = "NONE"` counts as cleared, so atlas would
		-- fill it with its own default; link to Normal to stay transparent.
		AtlasFooterBackground       = float_bg == "NONE" and { link = "Normal" } or { bg = float_bg },
		AtlasFooterText             = { fg = colors.comment, bg = float_bg },
		AtlasFooterActive           = { fg = colors.fg, bg = float_bg, bold = true },
		AtlasFooterInfo             = { fg = colors.blue, bg = float_bg, bold = true },
		AtlasFooterNote             = { fg = colors.pink, bg = float_bg, bold = true },
		AtlasFooterWarning          = { fg = colors.yellow, bg = float_bg, bold = true },
		AtlasFooterError            = { fg = colors.red, bg = float_bg, bold = true },
		AtlasFooterSuccess          = { fg = colors.green, bg = float_bg, bold = true },

		-- Markdown
		AtlasMarkdownStrong         = { fg = colors.orange, bold = true },
		AtlasMarkdownEmphasis       = { fg = colors.yellow, italic = true },
		AtlasMarkdownStrike         = { fg = colors.comment, strikethrough = true },
		AtlasMarkdownLink           = { fg = colors.cyan, underline = true },
		AtlasMarkdownImage          = { fg = colors.comment },
		AtlasMarkdownInlineCode     = { fg = colors.orange, bg = colors.bg_dark },
		AtlasMarkdownComment        = { link = "Comment" },
		AtlasMarkdownHeading1       = { fg = colors.pink, bold = true },
		AtlasMarkdownHeading2       = { fg = colors.fg, bold = true },
		AtlasMarkdownHeading3       = { fg = colors.yellow, bold = true },
		AtlasMarkdownHeading4       = { fg = colors.green, bold = true },
		AtlasMarkdownHeading5       = { fg = colors.orange, bold = true, italic = true },
		AtlasMarkdownHeading6       = { fg = colors.purple, italic = true },
		AtlasMarkdownList           = { fg = colors.purple, bold = true },
		AtlasMarkdownTaskDone       = { fg = colors.green },
		AtlasMarkdownTaskTodo       = { fg = colors.orange },
		AtlasMarkdownQuote          = { fg = colors.comment, italic = true },
		AtlasMarkdownQuoteBar       = { fg = colors.purple },
		AtlasMarkdownRule           = { fg = colors.comment },
		AtlasMarkdownCode           = { link = "AtlasCodeBackground" },
		AtlasMarkdownCodeLabel      = { fg = colors.comment, italic = true },
		AtlasMarkdownNote           = { fg = colors.blue, bold = true },
		AtlasMarkdownTip            = { fg = colors.green, bold = true },
		AtlasMarkdownImportant      = { fg = colors.purple, bold = true },
		AtlasMarkdownWarning        = { fg = colors.yellow, bold = true },
		AtlasMarkdownCaution        = { fg = colors.red, bold = true },
		AtlasMarkdownTableHeader    = { fg = colors.pink, bold = true },
		AtlasMarkdownTableRow       = { link = "AtlasCodeBackground" },
		AtlasMarkdownTableBorder    = { fg = colors.blue },
	}

	for index, color in ipairs(dynamic) do
		groups[string.format("AtlasDynColor%02d", index)] = { fg = color }
		groups[string.format("AtlasDynBgColor%02d", index)] = { fg = colors.bg, bg = color }
	end

	return groups
end

return M
