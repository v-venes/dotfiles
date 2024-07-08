return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	enabled = false,
	keys = {
		{ "<leader>e", ":Neotree filesystem reveal left toggle<CR>", mode = "n", desc = "Toggle Neotree" },
	},
}
