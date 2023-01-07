-- Disabling cursors.
vim.keymap.set("n", "<up>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<down>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<left>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<right>", "<Nop>", { noremap = true })

-- Open netrw.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { noremap = true })

-- Remove highlights.
vim.keymap.set("n", "<leader><leader>", ":noh<CR>:set nospell<CR>", {
    noremap = true,
    silent = true,
})

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
