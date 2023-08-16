vim.g.mapleader = " "

local map = vim.keymap.set

-- Standard Operations
map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>q", "<cmd>confirm q<cr>")

-- Manage Buffers
map("n", "<leader>n", "<cmd>enew<cr>")

-- Splits
map("n", "|", "<cmd>split<cr>")
map("n", "\\", "<cmd>vsplit<cr>")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
