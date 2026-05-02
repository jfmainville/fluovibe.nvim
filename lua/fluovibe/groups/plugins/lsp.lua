local M = {}

local colors = require("fluovibe.palette")

M.setup = function(opts)
	local transparent = opts and opts.transparency > 0
	local vtext_error = transparent and "NONE" or "#462839"
	local vtext_warn  = transparent and "NONE" or "#473336"
	local vtext_info  = transparent and "NONE" or "#2f4053"
	local vtext_hint  = transparent and "NONE" or "#2f4053"
	local vtext_ok    = transparent and "NONE" or "#314249"
	return {
		-- :h lsp-semantic-highlight
		["@lsp.type.class"]                        = { link = "Type" },
		["@lsp.type.decorator"]                    = { link = "Function" },
		["@lsp.type.enum"]                         = { link = "Type" },
		["@lsp.type.enumMember"]                   = { link = "Constant" },
		["@lsp.type.interface"]                    = { link = "Type" },
		["@lsp.type.macro"]                        = { link = "Keyword" },
		["@lsp.type.namespace"]                    = { fg = colors.cyan },
		["@lsp.type.parameter"]                    = { fg = colors.orange },
		["@lsp.type.property"]                     = { fg = colors.cyan },
		["@lsp.type.struct"]                       = { link = "Type" },
		["@lsp.type.type"]                         = { link = "Type" },
		["@lsp.type.typeParameter"]                = { link = "Type" },
		["@lsp.type.variable"]                     = { link = "Identifier" },
		["@lsp.typemod.variable.defaultLibrary"]   = { link = "Constant" },
		["@lsp.typemod.variable.readonly"]         = { link = "Constant" },
		["@lsp.typemod.variable.global"]           = { link = "Constant" },
		["@lsp.typemod.keyword.documentation"]     = { link = "Keyword" },
		["@lsp.typemod.class.documentation"]       = { link = "Type" },
		["@lsp.typemod.property.readonly"]         = { link = "Constant" },

		-- :h diagnostic-highlights
		DiagnosticError              = { fg = colors.diag_error },
		DiagnosticWarn               = { fg = colors.diag_warn },
		DiagnosticInfo               = { fg = colors.diag_info },
		DiagnosticHint               = { fg = colors.diag_hint },
		DiagnosticOk                 = { fg = colors.diag_ok },
		DiagnosticVirtualTextError   = { fg = colors.diag_error, bg = vtext_error },
		DiagnosticVirtualTextWarn    = { fg = colors.diag_warn,  bg = vtext_warn },
		DiagnosticVirtualTextInfo    = { fg = colors.diag_info,  bg = vtext_info },
		DiagnosticVirtualTextHint    = { fg = colors.diag_hint,  bg = vtext_hint },
		DiagnosticVirtualTextOk      = { fg = colors.diag_ok,    bg = vtext_ok },
		DiagnosticUnderlineError     = { fg = colors.diag_error, underline = true },
		DiagnosticUnderlineWarn      = { fg = colors.diag_warn,  underline = true },
		DiagnosticUnderlineInfo      = { fg = colors.diag_info,  underline = true },
		DiagnosticUnderlineHint      = { fg = colors.diag_hint,  underline = true },
		DiagnosticUnderlineOk        = { fg = colors.diag_ok,    underline = true },

		-- :h lsp-highlight
		LspReferenceText             = { link = "Visual" },
		LspReferenceRead             = { link = "Visual" },
		LspReferenceWrite            = { link = "Visual" },
		LspInlayHint                 = { fg = "#7f6600" },
	}
end

return M
