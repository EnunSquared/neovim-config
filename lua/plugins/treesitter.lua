return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {
                "lua", 
                "vim", 
                "cpp", 
                "javascript", 
                "html", 
                "css", 
                "c",
                "vimdoc",
                "luadoc",
                "markdown"
            },
            highlight = {enable = true},
            indent = {enable = true},
        })
    end
}
