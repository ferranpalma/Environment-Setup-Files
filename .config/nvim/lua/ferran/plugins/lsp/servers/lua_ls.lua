local keybindings = require("ferran.plugins.lsp.keybindings")

vim.lsp.config['lua_ls'] = {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    on_attach = keybindings.on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        }
    }
}
