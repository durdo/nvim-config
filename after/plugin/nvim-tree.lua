require("nvim-tree").setup({
    sync_root_with_cwd = true,
    view = {
        adaptive_size = false,
        mappings = {
            list = {
                { key = "<C-v>", action = "" }, -- vsplit
                { key = "<C-x>", action = "" }, -- split
                { key = "<C-t>", action = "" }, -- tabnew
                { key = "<BS>", action = "" }, -- close_node
                { key = "<Tab>", action = "" }, -- preview
                { key = "D", action = "" }, -- trash
                { key = "[e", action = "" }, -- prev_diag_item
                { key = "]e", action = "" }, -- next_diag_item
                { key = "[c", action = "" }, -- prev_git_item
                { key = "]c", action = "" }, -- next_git_item
                { key = "-", action = "" }, -- dir_up
                { key = "s", action = "" }, -- system_open
                { key = "W", action = "" }, -- collapse_all
                { key = "g?", action = "" }, -- toggle_help

                { key = "d", action = "cd" }, -- remove
                { key = "x", action = "remove" }, -- cut

                { key = "t", action = "cut" },
                { key = "]d", action = "prev_diag_item" },
                { key = "[d", action = "next_diag_item" },
                { key = "]g", action = "prev_git_item" },
                { key = "[g", action = "next_git_item" },
                { key = "u", action = "dir_up" },
                { key = "'", action = "close_node" },
                { key = '"', action = "collapse_all" },
                { key = "?", action = "toggle_help" },
            },
        },
    },
    renderer = {
        full_name = true,
        group_empty = true,
        special_files = {},
        symlink_destination = false,
        indent_markers = {
            enable = true,
        },
        icons = {
            git_placement = "signcolumn",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    update_focused_file = {
        enable = true,
        update_root = true,
        ignore_list = { "help" },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = false,
        icons = {
            hint = "⚑",
            info = "➜",
            warning = "▲",
            error = "✘",
        },
    },
    git = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = false,
    },
    filters = {
        custom = {
            "^.git$",
        },
    },
    actions = {
        change_dir = {
            enable = false,
            restrict_above_cwd = true,
        },
        open_file = {
            resize_window = true,
            window_picker = {
                chars = "aoeui",
            },
        },
        remove_file = {
            close_window = false,
        },
    },
    log = {
        enable = false,
        truncate = true,
        types = {
            all = false,
            config = false,
            copy_paste = false,
            diagnostics = false,
            git = false,
            profile = false,
            watcher = false,
        },
    },
})

vim.keymap.set(
    "n",
    "<leader>d",
    ":NvimTreeToggle<CR>",
    { silent = true, remap = false }
)

vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsError", { fg = "#FF8082" })
vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsWarning", { fg = "#EFBC58" })
vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsInformation", { fg = "#58B8EF" })
vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsHint", { fg = "#A7D9C9" })
