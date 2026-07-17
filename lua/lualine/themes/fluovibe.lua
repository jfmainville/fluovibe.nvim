local colors = require("fluovibe.palette")

return {
	normal = {
		a = { bg = colors.bg, fg = colors.purple, gui = "bold" },
		b = { bg = "#59007a", fg = colors.purple },
		c = { bg = colors.bg_dark, fg = colors.fg },
	},
	insert = {
		a = { bg = colors.bg, fg = colors.yellow, gui = "bold" },
		b = { bg = "#7f7f00", fg = colors.yellow },
		c = { bg = colors.bg_dark, fg = colors.fg },
	},
	visual = {
		a = { bg = colors.bg, fg = colors.cyan, gui = "bold" },
		b = { bg = "#03767c", fg = colors.cyan },
		c = { bg = colors.bg_dark, fg = colors.fg },
	},
	replace = {
		a = { bg = colors.bg, fg = colors.red, gui = "bold" },
		b = { bg = "#7f0000", fg = colors.red },
		c = { bg = colors.bg_dark, fg = colors.fg },
	},
	command = {
		a = { bg = colors.bg, fg = colors.orange, gui = "bold" },
		b = { bg = "#7a3c00", fg = colors.orange },
		c = { bg = colors.bg_dark, fg = colors.fg },
	},
	terminal = {
		a = { bg = colors.bg, fg = colors.green, gui = "bold" },
		b = { bg = "#007f00", fg = colors.green },
		c = { bg = colors.bg_dark, fg = colors.fg },
	},
	inactive = {
		a = { bg = colors.bg_dark, fg = colors.comment, gui = "bold" },
		b = { bg = colors.bg_dark, fg = colors.comment },
		c = { bg = colors.bg_dark, fg = colors.comment },
	},
}
