return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { 'c', 'go', 'lua', 'python', 'rust', 'javascript', 'typescript', 'vue' },
            auto_install = true,
        })
    end
}
