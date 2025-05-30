local M = {}

M.on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }

    vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
    vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
    vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "gpd", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "gnd", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
end

return M
