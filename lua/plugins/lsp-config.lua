return {

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "clangd", "gopls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				cmd = { "lua-language-server" },
				filetypes = { "lua" },
				root_markers = {
					".luarc.json",
					".luarc.jsonc",
					".luacheckrc",
					".stylua.toml",
					"stylua.toml",
					"selene.toml",
					"seleme.yml",
					".git",
				},
			})

			vim.lsp.config("pyright", {
				capabilities = capabilities,
				cmd = { "pyright-langserver", "--stdio" },
				filetypes = { "python" },
				root_markers = {
					"pyproject.toml",
					".git",
				},
			})

			vim.lsp.config("clangd", {
				capabilities = capabilities,
				cmd = { "clangd" },
				filetypes = { "c" },
				root_markers = {
					"compile_commands.json",
					"compile_flags.txt",
					".git",
				},
			})

			vim.lsp.config("gopls", {
				capabilities = capabilities,
				cmd = { "gopls" },
				filetypes = { "go", "gomod" },
				root_markers = {
					"go.mod",
					"go.sum",
					".git",
				},
				settings = {
					gopls = {
						completeUnimported = true,
						usePlaceholders = true,
						staticcheck = true,
						analyses = {
							unusedparams = true,
							nilness = true,
							shadow = true,
						},
					},
				},
			})

			vim.lsp.enable({ "lua_ls", "pyright", "clangd", "gopls" })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
