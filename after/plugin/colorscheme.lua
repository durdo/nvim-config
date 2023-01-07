require("tokyonight").setup({
    -- Dark mode
    style = "night",
    -- Do not override terminal own colors
    terminal_colors = true,
    -- Make comments grey
    styles = {
        comments = { fg = "#7C7C7C" },
        functions = { fg = "#EF7072" },
    },
    -- Perform some color changes
    -- to make it similar to nazca
    on_colors = function(colors)
        colors.blue = "#E3E4E5"
        colors.blue1 = "#EFBC58"
        colors.cyan = "#68C8FF"
        colors.fg = "#E3E4E5"
        colors.green = "#A7D9C9"
        colors.magenta = "#6699CC"
        colors.orange = "#F38E68"
        colors.purple = "#8368FF"
        colors.red = "#FF8082"
    end,
})

-- Enable colorscheme
vim.cmd.colorscheme("tokyonight")

-- Remove background color
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" });
