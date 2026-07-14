require("nvim-treesitter").setup({
    ensure_installed = {
        "bash", "c", "cpp", "css", "go", "html", "java", "javascript",
        "json", "lua", "python", "rust", "toml", "typescript", "yaml",
    },
    auto_install = false,
})
