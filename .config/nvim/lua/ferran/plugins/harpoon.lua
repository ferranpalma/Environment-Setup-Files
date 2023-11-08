return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local keymap = vim.keymap
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        keymap.set("n", "<leader>a", mark.add_file)        -- Add current file
        keymap.set("n", "<leader>hd", mark.clear_all)      -- Remove harpoon stack
        keymap.set("n", "<leader>m", ui.toggle_quick_menu) -- Show/disable quick menu

        keymap.set("n", "<C-n>", function() ui.nav_next() end)
        keymap.set("n", "<C-p>", function() ui.nav_prev() end)

        keymap.set("n", "<leader>hu", function() ui.nav_file(1) end)
        keymap.set("n", "<leader>hi", function() ui.nav_file(2) end)
        keymap.set("n", "<leader>ho", function() ui.nav_file(3) end)
        keymap.set("n", "<leader>hp", function() ui.nav_file(4) end)
    end,
}
