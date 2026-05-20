return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        -- markdown & text
        "marksman",
        "ltex_plus",
        "texlab",
        "lemminx",
        "html",

        -- styles
        "cssls",
        "tailwindcss",
        "emmet_ls",

        -- frontend
        "ts_ls",
        "prismals",
        "jsonls",
        "yamlls",

        -- backend
        "clangd",
        "jdtls",
        "rust_analyzer",
        "pyright",

        -- scripting
        "lua_ls",
        "bashls",

        -- devops
        "dockerls",
      },
    })
  end,
}
