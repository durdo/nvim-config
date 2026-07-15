-- Disabling cursors.
vim.keymap.set("n", "<up>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<down>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<left>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<right>", "<Nop>", { noremap = true })

-- Open netrw.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { noremap = true })

-- Remove trailing spaces.
vim.keymap.set("n", "<leader><leader>", function()
    local view = vim.fn.winsaveview()
    local old_search = vim.fn.getreg("/")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.winrestview(view)
    vim.fn.setreg("/", old_search)
end, { noremap = true, silent = true })

-- Close split killing the buffer.
vim.keymap.set("n", "<leader>q", ":bw<CR>", { noremap = true, silent = true })

-- J does not move the cursor.
vim.keymap.set("n", "J", "mzJ`z")

-- Navigation with cursor on the middle of screen.
vim.keymap.set("n", "<C-U>", "<C-U>zz")
vim.keymap.set("n", "<C-D>", "<C-D>zz")

-- Search with cursor on the middle of screen.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without changing what is
-- on the paste buffer.
vim.keymap.set("x", "<leader>p", '"_dP')

-- Find and replace.
vim.keymap.set(
    "n",
    "<leader>s",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)

-- Insert blank line below/above without entering insert mode.
vim.keymap.set("n", "<leader>o", "o<ESC>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>O", "O<ESC>", { noremap = true, silent = true })

-- Window navigation.
vim.keymap.set("n", "<leader>h", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>j", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", "<C-w>l", { noremap = true, silent = true })

-- Toggle fold with space.
vim.keymap.set("n", "<space>", "za", { noremap = true, silent = true })