local status_ok, rainbow_delimiters = pcall(require, "rainbow-delimiters")
if not status_ok then
	return
end

vim.g.rainbow_delimiters = {
	priority = {
		["("] = 110,
		["["] = 120,
		["{"] = 130,
		["<"] = 140,
	},
	-- Use a dictionary of highlight groups
	highlight = {
		"RainbowDelimiterRed",
		"RainbowDelimiterYellow",
		"RainbowDelimiterBlue",
		"RainbowDelimiterOrange",
		"RainbowDelimiterGreen",
		"RainbowDelimiterViolet",
		"RainbowDelimiterCyan",
	},
	-- Explicitly disable in specific filetypes
	disable = { "dashboard" },
}

vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#F07178" })
vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#FFB13B" })
vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = "#6CA0E8" })
vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#FF7900" })
vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg = "#A8FF60" })
vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#D16D9E" })
vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg = "#89DDFF" })
