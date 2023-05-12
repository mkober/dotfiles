vim.g.mapleader = " "

-- Open file explorer
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Open Dired
vim.keymap.set("n", "<leader>.", "<cmd>Dired<CR>")

-- Reload current file
vim.keymap.set("n", "<leader>r", "<cmd>e<CR>")

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cleaner join lines
vim.keymap.set("n", "J", "mzJ`z")

-- Jump to the start and end
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Jump to lines
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Open NvimTree
vim.keymap.set("n", "<leader>nt", "<cmd>NvimTreeOpen<CR>")

-- Deletes the selected text, yanks it to the black hole register, and pastes it above the line
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yanks the selected text to the clipboard in both normal and visual mode
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Save file on exit of inssert mode
vim.keymap.set("i", "<C-c>", "<Esc>:w<CR>")

-- Case-insensitive search-and-replace operation on the entire file, replacing instances of the word under the cursor with the contents of the default register
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Shorthand for source command
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Split Panes
vim.keymap.set("n", "<leader>vs" , ":vsplit<CR>")
vim.keymap.set("n", "<leader>hs" , ":split<CR>")

-- Pick a Window
vim.keymap.set("n", "<leader>w", function()
    local picked_window_id = picker.pick_window() or vim.api.nvim_get_current_win()
    vim.api.nvim_set_current_win(picked_window_id)
end, { desc = "Pick a window" })
