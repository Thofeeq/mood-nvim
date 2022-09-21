local M = {}

function M.setup()
	require("nvim-tree").setup({
		update_cwd = false,
		view = {
			adaptive_size = true,
			hide_root_folder = true,
			mappings = {
				custom_only = false,
			},
		},
		update_focused_file = {
			enable = true,
			update_root = false,
			ignore_list = {},
		},
	})
end

return M
