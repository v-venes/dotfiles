return {
	"andweeb/presence.nvim",
	config = function()
		require("presence").setup({
			blacklist = {
				"manager",
			},
		})
	end,
}
