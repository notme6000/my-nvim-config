return {
	vim.keymap.set("n", "<C-t>", function()
		local current_buf = vim.api.nvim_get_current_buf()

		vim.cmd("tabnew")

		require("telescope.builtin").find_files({
			previewer = true,
			layout_strategy = "vertical",
		})

    vim.keymap.set('n', '<S-h>', 'gT', { desc = "Previous tab" })
    vim.keymap.set('n', '<S-l>', 'gt', { desc = "next tab" })

	end, { desc = "open new tab with file picker" }),
}
