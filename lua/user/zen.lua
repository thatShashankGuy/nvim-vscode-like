local status_ok, zen = pcall(require, "zen-mode")
if not status_ok then
	return
end

zen.setup({
	window = {
		backdrop = 0.95,
		width = 90,
		height = 1,
		options = {
			signcolumn = "no",
			number = "no",
			relativenumber = "no",
			cursorline = "no",
			cursorcolumn = "no",
			foldcolumn = "no",
			list = "no",
		},
	},
	plugins = {
		options = {
			enabled = true,
			all_banners = true,
			all_lines = {
				footer = function()
					return os.date("%Y-%m-%d")
				end,
			},
		},
		twilight = { enabled = true },
		gitsigns = { enabled = true },
	},
})
