local icons = require("nvim-nonicons")
local builtin = require("telescope.builtin")

vim.keymap.set("n", "fh", builtin.help_tags, {})
vim.keymap.set("n", "fc", builtin.commands, {})
vim.keymap.set("n", "ff", builtin.find_files, {})
vim.keymap.set("n", "fg", builtin.git_files, {})
vim.keymap.set("n", "fb", builtin.buffers, {})
-- requires rigrep to work!!
vim.keymap.set("n", "fs", builtin.live_grep, {})

require("telescope").setup({
    defaults = {
        prompt_prefix = "  " .. icons.get("telescope") .. "  ",
        selection_caret = " ❯ ",
        entry_prefix = "   ",
    },
})
