return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		require("ibl").setup({
			scope = { show_start = false, show_end = false },
			exclude = {
				filetypes = {
					"dashboard",
					"neo-tree",
					"lazy",
					"mason",
					"notify",
				},
			},
		})
	end,
}
