local ok, navic = pcall(require, "nvim-navic")
if not ok then
	return
end

navic.setup({
	icons = {
		File = "",
		Module = "",
		Namespace = "",
		Package = "",
		Class = "",
		Method = "ƒ",
		Property = "",
		Field = "",
		Constructor = "",
		Enum = "ℰ",
		Interface = "ﰮ",
		Function = "",
		Variable = "𝓔",
		Constant = "",
		String = "",
		Number = "",
		Boolean = "◩",
		Array = "",
		Object = "⛶",
		Key = "",
		Null = "ﳠ",
		EnumMember = "",
		Struct = "",
		Event = "",
		Operator = "",
		TypeParameter = "",
	},
	highlight = true,
	separator = " > ",
	depth_limit = 0,
	depth_limit_indicator = "..",
	_safe_output = true,
})

vim.api.nvim_set_hl(0, "NavicIconsFile", { fg = "#C0C0C0" })
vim.api.nvim_set_hl(0, "NavicIconsModule", { fg = "#FF7900" })
vim.api.nvim_set_hl(0, "NavicIconsNamespace", { fg = "#C0C0C0" })
vim.api.nvim_set_hl(0, "NavicIconsPackage", { fg = "#C0C0C0" })
vim.api.nvim_set_hl(0, "NavicIconsClass", { fg = "#FFB13B" })
vim.api.nvim_set_hl(0, "NavicIconsMethod", { fg = "#6CA0E8" })
vim.api.nvim_set_hl(0, "NavicIconsProperty", { fg = "#6CA0E8" })
vim.api.nvim_set_hl(0, "NavicIconsField", { fg = "#6CA0E8" })
vim.api.nvim_set_hl(0, "NavicIconsConstructor", { fg = "#6CA0E8" })
vim.api.nvim_set_hl(0, "NavicIconsEnum", { fg = "#FFB13B" })
vim.api.nvim_set_hl(0, "NavicIconsInterface", { fg = "#FFB13B" })
vim.api.nvim_set_hl(0, "NavicIconsFunction", { fg = "#6CA0E8" })
vim.api.nvim_set_hl(0, "NavicIconsVariable", { fg = "#F07178" })
vim.api.nvim_set_hl(0, "NavicIconsConstant", { fg = "#F07178" })
vim.api.nvim_set_hl(0, "NavicIconsString", { fg = "#A8FF60" })
vim.api.nvim_set_hl(0, "NavicIconsNumber", { fg = "#FF79C6" })
vim.api.nvim_set_hl(0, "NavicIconsBoolean", { fg = "#FF79C6" })
vim.api.nvim_set_hl(0, "NavicIconsArray", { fg = "#FF79C6" })
vim.api.nvim_set_hl(0, "NavicIconsObject", { fg = "#FF79C6" })
vim.api.nvim_set_hl(0, "NavicIconsKey", { fg = "#F07178" })
vim.api.nvim_set_hl(0, "NavicIconsNull", { fg = "#F07178" })
vim.api.nvim_set_hl(0, "NavicIconsEnumMember", { fg = "#FFB13B" })
vim.api.nvim_set_hl(0, "NavicIconsStruct", { fg = "#FFB13B" })
vim.api.nvim_set_hl(0, "NavicIconsEvent", { fg = "#FFB13B" })
vim.api.nvim_set_hl(0, "NavicIconsOperator", { fg = "#89DDFF" })
vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", { fg = "#89DDFF" })
vim.api.nvim_set_hl(0, "NavicText", { fg = "#C0C0C0" })
vim.api.nvim_set_hl(0, "NavicSeparator", { fg = "#C0C0C0" })
