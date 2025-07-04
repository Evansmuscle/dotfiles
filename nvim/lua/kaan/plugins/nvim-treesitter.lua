return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			-- A list of parser names, or "all" (the listed parsers MUST always be installed)
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"javascript",
				"typescript",
				"json",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"svelte",
				"graphql",
				"bash",
				"dockerfile",
				"gitignore",
				"query",
				"markdown",
				"markdown_inline",
				"python",
				"nginx",
				"terraform",
			},
			ignore_install = {},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				disable = function(_lang, buf)
					local max_chars_per_line = 20000 -- VSCode default for tokenization
					local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
					for _, line in ipairs(lines) do
						if #line > max_chars_per_line then
							return true -- disable Treesitter for this buffer
						end
					end
					return false
				end,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			autotag = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
