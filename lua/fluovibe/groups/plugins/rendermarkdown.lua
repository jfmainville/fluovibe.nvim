local M = {}

local colors = require("fluovibe.palette")

M.setup = function(opts)
	local transparent = opts and opts.transparent
	local h1_bg   = transparent and "NONE" or "#260D3D"
	local h2_bg   = transparent and "NONE" or "#002B3F"
	local h3_bg   = transparent and "NONE" or "#262F19"
	local h4_bg   = transparent and "NONE" or "#002F19"
	local h5_bg   = transparent and "NONE" or "#241B19"
	local h6_bg   = transparent and "NONE" or "#1F153F"
	local code_bg = transparent and "NONE" or "#091833"
	return {
		RenderMarkdownH1Bg     = { fg = colors.pink, bg = h1_bg },
		RenderMarkdownH2Bg     = { fg = colors.fg, bg = h2_bg },
		RenderMarkdownH3Bg     = { fg = colors.yellow, bg = h3_bg },
		RenderMarkdownH4Bg     = { fg = colors.green, bg = h4_bg },
		RenderMarkdownH5Bg     = { fg = colors.orange, bg = h5_bg },
		RenderMarkdownH6Bg     = { fg = colors.purple, bg = h6_bg },
		RenderMarkdownH1       = { fg = colors.pink },
		RenderMarkdownH2       = { fg = colors.fg },
		RenderMarkdownH3       = { fg = colors.yellow },
		RenderMarkdownH4       = { fg = colors.green },
		RenderMarkdownH5       = { fg = colors.orange },
		RenderMarkdownH6       = { fg = colors.purple },
		RenderMarkdownCode     = { bg = code_bg },
		RenderMarkdownCodeInline = { bg = code_bg },
	}
end

return M
