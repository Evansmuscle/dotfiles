return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				go = { "goimports", "gofumpt" },
				php = { "php-cs-fixer" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				cs = { "clang-format" },
				cmake = { "cmakelang" },
				gd = { "gdtoolkit" },
			},
			format_on_save = {
				timeout_ms = 1000,
				async = false,
				lsp_format = "fallback",
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				timeout_ms = 1000,
				async = false,
				lsp_format = "fallback",
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}