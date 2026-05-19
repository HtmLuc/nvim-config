return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {"windwp/nvim-ts-autotag",},
  config = function()
    require('nvim-treesitter').install {
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
    }
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
    require("nvim-ts-autotag").setup()
  end,
}
