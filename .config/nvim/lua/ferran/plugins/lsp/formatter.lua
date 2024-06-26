return {
    "elentok/format-on-save.nvim",
    config = function()
        local formatters = require("format-on-save.formatters")
        local fmt_on_save = require("format-on-save")
        fmt_on_save.setup({
            formatter_by_ft = {
                go = formatters.lsp,
                lua = formatters.lsp,
                bash = formatters.lsp,
                html = formatters.lsp,
                vue = formatters.lsp,
                javascript = formatters.prettierd,
                typescript = formatters.prettierd,
                typescriptreact = formatters.prettierd,
                css = formatters.lsp,
                yaml = formatters.lsp,
                python = formatters.lsp,
            },
        })
    end
}
