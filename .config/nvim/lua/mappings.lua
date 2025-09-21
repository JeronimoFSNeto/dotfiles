local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Salvar e sair
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)

-- Navegação entre janelas
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Usar <Space> como líder
vim.g.mapleader = " "
