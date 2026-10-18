local servers = { "pyrefly", "texlab", "zls", "clangd" }

return {
    "neovim/nvim-lspconfig",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        { "mason-org/mason-lspconfig.nvim", opts = { ensure_installed = servers } },
    },
    config = function()
        vim.lsp.enable(servers)
        vim.lsp.inlay_hint.enable(true)
    end,
}
