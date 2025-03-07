local M = {}

M.treesitter = {
  ensure_installed = {
    -- neovim
    "vim",
    "lua",

    -- webdev
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",

    -- cpp dev
    "c",
    "cpp",
    "cmake",

    -- markdown
    "markdown",
    "markdown_inline",

    -- rust
    "rust",

    -- zig
    "zig",

    -- python
    "python",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- rust
    "rust-analyzer",
    "rustfmt",

    -- zig
    "zls",

    -- python
    "pyright",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
