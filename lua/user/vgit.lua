local status_ok, vgit = pcall(require, "vgit")
if not status_ok then
	return
end

vgit.setup({
	settings = {
		-- VGit configuration
		signs = {
			add = { text = "│" },
			remove = { text = "_" },
			top_deleted = { text = "‾" },
			bottom_deleted = { text = "¯" },
		},
		blame_line_threshold = 0,
		disable_context_inline_newline = false,
		keymaps = {
			["<Leader>gs"] = "buffer_blame_preview",
			["<Leader>gh"] = "buffer_history_preview",
			["<Leader>gd"] = "diff_preview",
			["<Leader>gD"] = "diff_preview_index",
			["<Leader>gc"] = "buffer_commit_preview",
			["<Leader>gu"] = "buffer_reset",
		},
	},
})
