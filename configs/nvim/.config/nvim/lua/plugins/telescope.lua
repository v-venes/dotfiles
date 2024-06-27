return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function() end,
		keys = {
			{ "<leader>ff", ":Telescope find_files<CR>", desc = "Files" },
			{ "<leader>fg", ":Telescope live_grep<CR>", desc = "Live grep" },
			{ "<leader>fb", ":Telescope buffers<CR>", desc = "Buffers" },
			{ "<leader>fn", ":Telescope notify<CR>", desc = "Notify" },
			{ "<leader>fe", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", desc = "File browser" },
			{ "<leader>fE", ":Telescope file_browser<CR>", desc = "File browser root" },
			{ "<leader>fB", ":Telescope git_branches<CR>", desc = "Branches" },
			{ "<leader>fc", ":Telescope git_commits<CR>", desc = "Commits" },
			{ "<leader>ft", ":TodoTelescope<CR>", desc = "TODO" },
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },

		config = function()
			local telescope = require("telescope")
			local fb_actions = require("telescope._extensions.file_browser.actions")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					layout_config = { prompt_position = "top" },
					sorting_strategy = "ascending",
				},
				extensions = {
					file_browser = {
						hijack_netrw = true,
						mappings = {
							["n"] = {
								["a"] = fb_actions.create,
								["p"] = fb_actions.goto_parent_dir,
								["<PageUp>"] = actions.preview_scrolling_up,
								["<PageDown>"] = actions.preview_scrolling_down,
							},
						},
					},
				},
			})

			require("telescope").load_extension("file_browser")
		end,
	},
}
