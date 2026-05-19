return {
	"nvim-treesitter/nvim-treesitter",
  lazy = false,
	build = ":TSUpdate",
--    config = function()
--		local config = require("nvim-treesitter.configs")
--		config.setup({
--			auto_install = true,
--			ensure_installed = { "lua", "c" },
--			highlight = { enable = true },
--			indent = { enable = true },
--		})
--	end,
}
