return {
	"elentok/format-on-save.nvim",
	config = function()
		local format_on_save = require("format-on-save")
		local formatters = require("format-on-save.formatters")
		format_on_save.setup({
			exclude_path_patterns = {
				"/node_modules/",
				".local/share/nvim/lazy",
			},
			formatter_by_ft = {
				javascript = formatters.lsp,
				lua = formatters.lsp,
				typescript = formatters.prettierd,
				typescriptreact = formatters.prettierd,
				html = formatters.lsp,
				css = formatters.lsp,
			},
			fallback_formatter = {
				formatters.remove_trailing_whitespace,
				formatters.remove_trailing_newlines,
				formatters.prettierd,
			},
		})
	end,
}
