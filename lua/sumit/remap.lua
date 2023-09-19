vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") --move the selected lines down one line
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") --move the selected lines up one line

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- <C-d> performs a half-page scroll down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- <C-u> performs a half-page scroll up
vim.keymap.set("n", "n", "nzzzv") -- go to the next search word
vim.keymap.set("n", "N", "Nzzzv") -- go to the next search word

-- greatest remap ever
vim.keymap.set({"n","x"}, "<leader>P", [["+p]]) -- paste from the system clipboard

-- when select a word in visual mode paste the word in register over the selected word
-- and the register word is still there meaning pasting the same copied word over and over
vim.keymap.set({"n","x"}, "<leader>p", [["_dP]]) 

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- copy selected lines to the system clipboard 
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- copy the entire line to the system clipboard


vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>") -- this cancels any command that is put after : or selected text using v or V alt. use C+[ 

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
