return {
    "elentok/format-on-save.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
        local formatters = require("format-on-save.formatters")
        local fmt_on_save = require("format-on-save")
        fmt_on_save.setup({
            formatter_by_ft = {
                go = formatters.lsp,
                lua = formatters.lsp,
                bash = formatters.lsp,
                html = formatters.lsp,
                javascript = formatters.prettierd,
                vue = formatters.prettierd,
                css = formatters.prettierd,
                yaml = formatters.lsp,
                python = formatters.lsp,
                dockercompose = formatters.lsp,

            },
        })
    end
}
