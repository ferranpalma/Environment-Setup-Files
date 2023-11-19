return {
    "simrat39/rust-tools.nvim",
    dependencies = {
        "rust-lang/rust.vim",
    },
    ft = { "rust", },
    config = function()
        local rt = require("rust-tools")
        local util = require("lspconfig/util")
        local mason_registry = require("mason-registry")
        local codelldb = mason_registry.get_package("codelldb")
        local extension_path = codelldb:get_install_path() .. "/extension/"
        local codelldb_path = extension_path .. "adapter/codelldb"
        local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
        rt.setup({
            dap = {
                adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
            },
            server = {
                filetypes = { "rust" },
                root_dir = util.root_pattern("Cargo.toml"),
                settings = {
                    ['rust-analyzer'] = {
                        cargo = { allFeatures = true },
                        checkOnSave = {
                            allFeatures = true,
                            command = 'clippy',
                        },
                        procMacro = {
                            enable = true,
                        },
                    },
                },
                on_attach = function(_, bufnr)
                    -- Hover actions
                    vim.keymap.set("n", "<Leader>h", rt.hover_actions.hover_actions, { buffer = bufnr })
                    -- Code action groups
                    vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
                end,
            },
            tools = {
                hover_actions = {
                    auto_focus = true,
                },
            },
        })
    end,
}
