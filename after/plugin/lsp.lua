require("lspconfig.ui.windows").default_options.border = "single"
local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    "tsserver",
    "eslint",
    "sumneko_lua",
})

local display_info = function()
    -- displays information about the symbol
    vim.lsp.buf.hover()
    -- enters the window
    vim.lsp.buf.hover()
end

local displa_error = function()
    -- displays error
    vim.diagnostic.open_float()
    -- enters the window
    vim.diagnostic.open_float()
end

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "<leader>i", display_info, opts)
    vim.keymap.set("n", "<leader>e", displa_error, opts)
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)
end)

local cmp = require("cmp")
local cmp_config = lsp.defaults.cmp_config({
    window = { completion = cmp.config.window.bordered() },
})

cmp.setup(cmp_config)

lsp.setup()

-- Almost the default config, but
-- allowing diagnostis to be focused.
vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = {
        focusable = true,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})

-- And use make my icons explicit.
lsp.set_sign_icons({ error = "✘", info = "➜", warn = "▲", hint = "⚑" })
