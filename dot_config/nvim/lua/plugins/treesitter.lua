local parsers = {
    "python",
    "lua",
    "vim",
    "latex",
    "zig",
    "markdown",
    "markdown_inline",
    "cpp",
}

local filetypes = {
    "python",
    "lua",
    "vim",
    "tex",
    "zig",
    "markdown",
    "cpp"
}

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install(parsers)

        vim.api.nvim_create_autocmd("FileType", {
            pattern = filetypes,
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
