local keybindings = require("ferran.plugins.lsp.keybindings")

vim.lsp.config('ts_ls', {
    on_attach = keybindings.on_attach,
    filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
})
