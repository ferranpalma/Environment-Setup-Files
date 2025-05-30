local keybindings = require("ferran.plugins.lsp.keybindings")
local capabilities = require("ferran.plugins.lsp.capabilities")

vim.lsp.config['lua_ls'] = {
    capabilities = capabilities,
    on_attach = keybindings.on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        }
    }
}
