local keybindings = require("ferran.plugins.lsp.keybindings")

vim.lsp.config('ruff', {
    cmd = {'ruff', 'server'},
    on_attach = keybindings.on_attach,
})
