return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  opts = {
    highlight = {
      enable = true,
    },
    indent = { enable = true },
    autotag = {
      enable = true,
    },
    ensure_installed = {
      -- markdown & text
      "markdown",
      "markdown_inline",
      "latex",
      "xml",
      "html",

      -- styles
      "css",
      "scss",

      --frontend
      "javascript",
      "typescript",
      "tsx",
      "prisma",
      "svelte",
      "graphql",
      "json",
      "yaml",

      -- backend
      "c",
      "cpp",
      "c_sharp",
      "java",
      "rust",
      "python",

      -- scripting
      "lua",
      "bash",

      -- vim
      "vim",
      "vimdoc",
      "query",

      -- devops
      "dockerfile",
      "gitignore",

      -- work
      "php",
      "phpdoc",
      "twig",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  }
}
