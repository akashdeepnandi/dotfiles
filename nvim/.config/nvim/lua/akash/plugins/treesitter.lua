return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup {
      --         ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
      ensure_installed = { "c", "lua", "elixir", "svelte", "javascript", "typescript", "python", "go", "php", "cpp" },
      sync_install = false,    -- install languages synchronously (only applied to `ensure_installed`)
      ignore_install = { "" }, -- List of parsers to ignore installing
      autopairs = {
        enable = true,
      },
      highlight = {
        enable = true, -- false will disable the whole extension
        additional_vim_regex_highlighting = true,
      },
      indent = { enable = true, },
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    }
  end
}
