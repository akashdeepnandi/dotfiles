return {
  names = {
    "tsserver",      -- ts, js
    "html",          -- html
    "cssls",         -- css
    "tailwindcss",   -- tailwind
    "svelte",        -- svelte
    "lua_ls",        -- lua
    "emmet_ls",      -- emmet html
    "prismals",      -- prisma
    "pyright",       -- python
    "bashls",        -- bash
    "clangd",        -- c, cpp
    "dockerls",      -- docker
    "eslint",        -- eslint
    "elixirls",      -- elixir
    "gopls",         -- golang
    "jsonls",        -- json
    "marksman",      -- markdown
    "rust_analyzer", -- Rust
    "vuels",         -- Vue
  },
  formatters = {
    "prettier",
    "stylua",
    "isort",
    "black",
    "pylint",
    "eslint_d",
    "rustfmt",
    "golines",
  },
  treesitter = {
    "c",
    "lua",
    "elixir",
    "svelte",
    "javascript",
    "typescript",
    "python",
    "go",
    "php",
    "cpp",
    "rust",
    "bash",
    "graphql",
  },
  formatters_by_ft = {
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    svelte = { "prettier" },
    vue = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    cpp = { "clang-format" },
    python = { "isort", "black" }, -- example on how to have multiple
    -- go = { "goimports", "golines" },
    go = { "golines" },
    lua = { "stylelua" },
    graphql = { "prettier" },
    rust = { "rustfmt" },
    elixir = { "mix" },
  },
  opts = {
    emmet_ls = {
      filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" }
    },
    lua_ls = {
      settings = { -- custom settings for lua
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            -- make language server aware of runtime files
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    }
  }
}
