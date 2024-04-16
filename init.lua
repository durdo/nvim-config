require("plugins")
require("config.options")
require("config.keymaps")

-- Automatic code formating using Neoformat.
-- npm install --location=global lua-fmt
-- install luarocks
---@diagnostic disable-next-line: undefined-global
-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--     pattern = { "*.js*", "*.ts*", "*.lua" },
--     command = "Neoformat",
-- })
