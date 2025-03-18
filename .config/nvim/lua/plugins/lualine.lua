local function get_attached_clients()
	local buf_clients = vim.lsp.get_active_clients({ bufnr = 0 })
	if #buf_clients == 0 then
		return "LSP inactive"
	end

	local buf_client_names = {}

	for _, client in pairs(buf_clients) do
		table.insert(buf_client_names, client.name)
	end

	local formatters = require("conform").list_formatters()
	for _, formatter in pairs(formatters) do
		table.insert(buf_client_names, formatter.name)
	end

	local client_names_str = table.concat(buf_client_names, ", ")
	local language_servers = string.format("[%s]", client_names_str)

	return language_servers
end

function get_running_linters()
	local buf_linter_names = {}

	local linters = require("lint").get_running()
	for _, linter in pairs(linters) do
		table.insert(buf_linter_names, linter)
	end

	local linter_names_str = table.concat(buf_linter_names, ", ")
	local formatted_linters = string.format("%s", linter_names_str)
	if string.len(formatted_linters) == 0 then
		return ""
	end

	return "󱉶 " .. formatted_linters
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = { "BufEnter" },
	opts = {
		options = {
			theme = "dracula",
			section_separators = { left = "", right = "" },
			component_separators = { left = "", right = "" },
		},
		sections = {
			lualine_x = { get_attached_clients, "searchcount" },
			lualine_y = { "filetype", get_running_linters },
			lualine_z = {
				function()
					return require("auto-session.lib").current_session_name(true)
				end,
			},
		},
	},
}
