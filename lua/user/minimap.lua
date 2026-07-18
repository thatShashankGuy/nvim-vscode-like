local status_ok, codewindow = pcall(require, "codewindow")
if not status_ok then
	return
end

codewindow.setup({
	exclude_filetypes = {
		"alpha",
		"dashboard",
		"NvimTree",
		"Outline",
		"toggleterm",
		"TelescopePrompt",
	},
	exclude_buftypes = {
		"quickfix",
		"help",
	},
	minimum_width = 50,
	default_height = 15,
	default_width = 50,
	window_border = "rounded",
	z_index = 1,
})

vim.keymap.set("n", "<Leader>m", ":CodewindowMinimize<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>M", ":CodewindowMaximize<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>tm", ":CodewindowToggle<CR>", { noremap = true, silent = true })
