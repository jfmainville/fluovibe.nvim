local M = {}

M.setup = function(opts)
	local transparent = opts and opts.transparency > 0
	local h1_bg   = transparent and "NONE" or "#242739"
	local h2_bg   = transparent and "NONE" or "#282C28"
	local h3_bg   = transparent and "NONE" or "#262C2C"
	local h4_bg   = transparent and "NONE" or "#1C2930"
	local h5_bg   = transparent and "NONE" or "#292739"
	local h6_bg   = transparent and "NONE" or "#262335"
	local code_bg = transparent and "NONE" or "#191A24"
	return {
		RenderMarkdownH1Bg     = { fg = "#86A2E8", bg = h1_bg },
		RenderMarkdownH2Bg     = { fg = "#D3AA6C", bg = h2_bg },
		RenderMarkdownH3Bg     = { fg = "#ACCA87", bg = h3_bg },
		RenderMarkdownH4Bg     = { fg = "#58B59C", bg = h4_bg },
		RenderMarkdownH5Bg     = { fg = "#B6A0EB", bg = h5_bg },
		RenderMarkdownH6Bg     = { fg = "#9780CC", bg = h6_bg },
		RenderMarkdownH1       = { fg = "#86A2E8" },
		RenderMarkdownH2       = { fg = "#D3AA6C" },
		RenderMarkdownH3       = { fg = "#ACCA87" },
		RenderMarkdownH4       = { fg = "#58B59C" },
		RenderMarkdownH5       = { fg = "#B6A0EB" },
		RenderMarkdownH6       = { fg = "#9780CC" },
		RenderMarkdownCode     = { bg = code_bg },
		RenderMarkdownCodeInline = { bg = code_bg },
	}
end

return M
