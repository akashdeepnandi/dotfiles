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