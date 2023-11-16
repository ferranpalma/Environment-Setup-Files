return {
    "elentok/format-on-save.nvim",
    config = function()
        local formatters = require("format-on-save.formatters")
        local fmt_on_save = require("format-on-save")
        fmt_on_save.setup({
            formatter_by_ft = {
                go = formatters.lsp,
                lua = formatters.lsp,
                typescript = formatters.lsp,
                javascript = formatters.lsp,
            }
        })
    end
}
