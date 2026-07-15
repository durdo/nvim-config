-- Diagnostic signs.
vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "✘",
            [vim.diagnostic.severity.WARN] = "▲",
            [vim.diagnostic.severity.HINT] = "⚑",
            [vim.diagnostic.severity.INFO] = "➜",
        },
    },
})

-- Format on save is handled by conform.nvim (see lua/plugins/init.lua).
-- conform uses LSP formatting as fallback when no external formatter is configured.

-- Keymaps on LSP attach.
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local opts = { buffer = event.buf, noremap = true, silent = true }

        vim.keymap.set("n", "<leader>i", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
        vim.keymap.set({ "n", "x" }, "<F3>", function()
            require("conform").format({ async = true, lsp_format = "fallback" })
        end, opts)
        vim.keymap.set("n", "<F4>", vim.lsp.buf.code_action, opts)
    end,
})

-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- LSP Server Configurations
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

-- TypeScript / JavaScript
-- Note: requires typescript@5 in project's node_modules (npm install -D typescript@5)
vim.lsp.config("ts_ls", {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },
})

-- Python
vim.lsp.config("pyright", {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" },
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
            },
        },
    },
})

-- C / C++
vim.lsp.config("clangd", {
    cmd = { "clangd", "--background-index", "--clang-tidy" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_markers = { "compile_commands.json", ".clangd", ".git" },
})

-- HTML
vim.lsp.config("html", {
    cmd = { "vscode-html-language-server", "--stdio" },
    filetypes = { "html" },
    root_markers = { "package.json", ".git" },
})

-- CSS
vim.lsp.config("cssls", {
    cmd = { "vscode-css-language-server", "--stdio" },
    filetypes = { "css", "scss", "less" },
    root_markers = { "package.json", ".git" },
})

-- Bash / Zsh
vim.lsp.config("bashls", {
    cmd = { "bash-language-server", "start" },
    filetypes = { "sh", "bash", "zsh" },
    root_markers = { ".git" },
})

-- PHP
vim.lsp.config("intelephense", {
    cmd = { "intelephense", "--stdio" },
    filetypes = { "php" },
    root_markers = { "composer.json", ".git" },
})

-- Erlang (uncomment when erlang_ls is installed)
-- vim.lsp.config("erlangls", {
--     cmd = { "erlang_ls" },
--     filetypes = { "erlang" },
--     root_markers = { "rebar.config", "erlang.mk", ".git" },
-- })

-- Elixir (uncomment when elixir-ls is installed)
-- vim.lsp.config("elixirls", {
--     cmd = { "language_server.sh" },
--     filetypes = { "elixir", "eelixir", "heex" },
--     root_markers = { "mix.exs", ".git" },
-- })

-- Enable all configured servers.
vim.lsp.enable("ts_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("clangd")
vim.lsp.enable("html")
vim.lsp.enable("cssls")
vim.lsp.enable("bashls")
vim.lsp.enable("intelephense")


