vim.g.mapleader = " " -- Set leader

-- Remaps
vim.keymap.set({ "i", "v" }, "öö", "<Esc>") -- Exit current mode

-- Commands
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Open file explorer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- Format document
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- Yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- Delete into void register
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- Substitute current word
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move current line one down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move current line one up

-- Movement
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Jump down and center view
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Jump up and center view
