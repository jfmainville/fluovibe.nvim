local M = {}

M.setup = function()
	return {
		RenderMarkdownH1Bg     = { fg = "#86A2E8", bg = "#242739" },
		RenderMarkdownH2Bg     = { fg = "#D3AA6C", bg = "#282C28" },
		RenderMarkdownH3Bg     = { fg = "#ACCA87", bg = "#262C2C" },
		RenderMarkdownH4Bg     = { fg = "#58B59C", bg = "#1C2930" },
		RenderMarkdownH5Bg     = { fg = "#B6A0EB", bg = "#292739" },
		RenderMarkdownH6Bg     = { fg = "#9780CC", bg = "#262335" },
		RenderMarkdownH1       = { fg = "#86A2E8" },
		RenderMarkdownH2       = { fg = "#D3AA6C" },
		RenderMarkdownH3       = { fg = "#ACCA87" },
		RenderMarkdownH4       = { fg = "#58B59C" },
		RenderMarkdownH5       = { fg = "#B6A0EB" },
		RenderMarkdownH6       = { fg = "#9780CC" },
		RenderMarkdownCode     = { bg = "#191A24" },
		RenderMarkdownCodeInline = { bg = "#191A24" },
	}
end

return M
