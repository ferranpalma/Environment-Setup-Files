return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
        "rcarriga/nvim-dap-ui",
        "theHamsta/nvim-dap-virtual-text",
        "williamboman/mason.nvim",
        "leoluz/nvim-dap-go"
    },
    config = function()
        local dap = require "dap"
        local dapui = require "dapui"

        require("dapui").setup()
        require("nvim-dap-virtual-text").setup()
        require("dap-go").setup()

        vim.keymap.set("n", "<Leader>g", dap.toggle_breakpoint)
        vim.keymap.set("n", "<Leader>bc", dap.continue)
        vim.keymap.set("n", "<Leader>bsi", dap.step_into)
        vim.keymap.set("n", "<Leader>bov", dap.step_over)
        vim.keymap.set("n", "<Leader>bo", dap.step_out)
        vim.keymap.set("n", "<Leader>bb", dap.step_back)
        vim.keymap.set("n", "<Leader>br", dap.restart)
        vim.keymap.set("n", "<Leader>bt", dap.terminate)

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
    end,
}
