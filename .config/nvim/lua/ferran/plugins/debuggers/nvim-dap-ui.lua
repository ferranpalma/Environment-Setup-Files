return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
    },
    ft = { "rust", },
    config = function()
        require("dapui").setup()
        local dap = require("dap")
        local dapui = require("dapui")
        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end
        vim.keymap.set("n", "<Leader>dt", ':DapToggleBreakpoint<CR>')
        vim.keymap.set("n", "<Leader>dx", ':DapTerminate<CR>')
        vim.keymap.set("n", "<Leader>do", ':DapStepOver<CR>')
    end
}
