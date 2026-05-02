local M = {}

local colors = require("fluovibe.palette")

M.setup = function(_opts)
	return {
		BlinkCmpMenu                       = { link = "NormalFloat" },
		BlinkCmpMenuBorder                 = { link = "WinSeparator" },
		BlinkCmpMenuSelection              = { bg = colors.selection },
		BlinkCmpScrollBarThumb             = { bg = colors.pink },
		BlinkCmpScrollBarGutter            = { link = "NormalFloat" },
		BlinkCmpLabel                      = { fg = colors.fg },
		BlinkCmpLabelDeprecated            = { fg = colors.comment, strikethrough = true },
		BlinkCmpLabelMatch                 = { fg = colors.yellow },
		BlinkCmpLabelDetail                = { fg = colors.comment },
		BlinkCmpLabelDescription           = { fg = colors.comment },
		BlinkCmpKind                       = { fg = colors.fg },
		BlinkCmpKindText                   = { link = "String" },
		BlinkCmpKindMethod                 = { link = "Function" },
		BlinkCmpKindFunction               = { link = "Function" },
		BlinkCmpKindConstructor            = { link = "Function" },
		BlinkCmpKindField                  = { fg = colors.cyan },
		BlinkCmpKindVariable               = { link = "Identifier" },
		BlinkCmpKindClass                  = { link = "Type" },
		BlinkCmpKindInterface              = { link = "Type" },
		BlinkCmpKindModule                 = { link = "Type" },
		BlinkCmpKindProperty               = { link = "Identifier" },
		BlinkCmpKindUnit                   = { link = "Number" },
		BlinkCmpKindValue                  = { link = "String" },
		BlinkCmpKindEnum                   = { link = "Type" },
		BlinkCmpKindKeyword                = { link = "Keyword" },
		BlinkCmpKindSnippet                = { link = "Keyword" },
		BlinkCmpKindColor                  = { fg = colors.green },
		BlinkCmpKindFile                   = { fg = colors.fg },
		BlinkCmpKindReference              = { link = "Underlined" },
		BlinkCmpKindFolder                 = { link = "Directory" },
		BlinkCmpKindEnumMember             = { link = "Constant" },
		BlinkCmpKindConstant               = { link = "Constant" },
		BlinkCmpKindStruct                 = { link = "Type" },
		BlinkCmpKindEvent                  = { link = "Function" },
		BlinkCmpKindOperator               = { link = "Operator" },
		BlinkCmpKindTypeParameter          = { link = "Type" },
		BlinkCmpDoc                        = { link = "NormalFloat" },
		BlinkCmpDocBorder                  = { link = "WinSeparator" },
		BlinkCmpDocSeparator               = { link = "WinSeparator" },
		BlinkCmpDocCursorLine              = { link = "CursorLine" },
		BlinkCmpSignatureHelp              = { link = "NormalFloat" },
		BlinkCmpSignatureHelpBorder        = { link = "WinSeparator" },
		BlinkCmpSignatureHelpActiveParameter = { fg = colors.yellow, bold = true },
	}
end

return M
