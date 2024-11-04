return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { 'c', 'go', 'lua', 'python', 'rust', 'html', 'javascript', 'typescript', 'css', 'vue', 'scss' },
            auto_install = true,
            highlight = {
                enable = true,
            }
        })
    end
}
