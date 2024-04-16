-- This section is for code formating
require("mason").setup()
require("mason-null-ls").setup({
    ensure_installed = {
        "black",
        "google_java_format",
        "checkstyle",
        "pint",
    },
    automatic_installation = true,
    automatic_setup = true,
})

local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.pint,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.google_java_format,
        null_ls.builtins.diagnostics.checkstyle.with({
            extra_args = { "-c", "/google_checks.xml" },
        }),
    },
})

-- Actual LSP configuration
require("lspconfig.ui.windows").default_options.border = "single"
local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    "clangd",   -- C, C++
    "erlangls", -- Erlang
    "hls",      -- Haskel
    "jdtls",    -- Java
    "lua_ls",   -- Lua
    "phpactor", -- PHP - requires `.phpactor.json` (must be a valid JSON)
    "pyright",  -- Python
    "taplo",    -- Toml
    "tsserver", -- Javascript / Typescript
    "eslint",   -- Javascript / Typescript
})

-- Don't add this function in the `on_attach` callback.
-- `format_on_save` should run only once, before the
-- language servers are active.
lsp.format_on_save({
    format_opts = {
        async = false,
        timeout_ms = 10000,
    },
    servers = {
        ['erlangls'] = { 'erlang' },
        ['lua_ls'] = { 'lua' },
        ['clangd'] = { 'c', 'cpp' },
        ['null-ls'] = { 'python', 'haskell', 'php' },
        ['tsserver'] = { 'javascript', 'typescript' },
    }
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
    mapping = cmp.mapping.preset.insert({
        ["<C-u>"] = cmp.mapping.scroll_docs(-4), -- Up
        ["<C-d>"] = cmp.mapping.scroll_docs(4),  -- Down
        -- C-b (back) C-f (forward) for snippet placeholder navigation.
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { "i", "s" }),
    }),
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
