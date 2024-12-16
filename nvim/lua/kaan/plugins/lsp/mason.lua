return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✔",
					package_pending = "→",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
				-- "asm_lsp",
				"astro",
				"awk_ls",
				"bashls",
				-- "pkgbuild_language_server",
				"stimulus_ls",
				"csharp_ls",
				"clangd",
				"cmake",
				"docker_compose_language_service",
				"dockerls",
				"elixirls",
				"gopls",
				"htmx",
				"java_language_server",
				-- "eslint",
				"ts_ls",
				"jsonls",
				"marksman",
				"matlab_ls",
				"mdx_analyzer",
				"intelephense",
				"powershell_es",
				"sqlls",
				"terraformls",
				"taplo",
				"vuels",
				"yamlls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"rustfmt",
				"goimports",
				"gofumpt",
				"php-cs-fixer",
				"clang-format",
				"cmakelang",
				"gdtoolkit",
				"pylint",
				"eslint_d",
				"bacon",
				"cfn-lint",
				"cmakelint",
				"cpplint",
				"tlint",
				"staticcheck",
				"semgrep",
			},
		})
	end,
}
