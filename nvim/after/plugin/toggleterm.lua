local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
	size = 20,
	open_mapping = [[<leader>f]],
    close_mapping = [[<leader>f]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,

	insert_mappings = false, -- do not open term in insert mode when set to false

	persist_size = true,
	direction = "float", -- you can set to vertical or horizantal also
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

vim.keymap.set({"n", "v"}, "<leader>3", ":w<cr>:TermExec cmd='g++ -ggdb -std=c++17 -DLOCAL -O2 %:~ -o %:p:r && %:~:r < %:~:h/inp'<cr>")
vim.keymap.set({"n", "v"}, "<leader>4", ":TermExec cmd='python3 -m IPython'<cr>")

--local Terminal = require("toggleterm.terminal").Terminal
--local cp = Terminal:new({ cmd = "g++ --version", hidden = true})
--function Cp()
    --cp:toggle()
--end

--function _G.set_terminal_keymaps()
  --local opts = {noremap = true}
  --vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-t><C-n>]], opts)
  --vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-t><C-n>]], opts)
  --vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-t><C-n><C-W>h]], opts)
  --vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-t><C-n><C-W>j]], opts)
  --vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-t><C-n><C-W>k]], opts)
  --vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-t><C-n><C-W>l]], opts)
--end

--vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
--
--local Terminal = require("toggleterm.terminal").Terminal
--local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
--
--function _LAZYGIT_TOGGLE()
	--lazygit:toggle()
--end
--
--local node = Terminal:new({ cmd = "node", hidden = true })
--
--function _NODE_TOGGLE()
	--node:toggle()
--end

