return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,           -- Treesitter must not be lazy-loaded
  build = ":TSUpdate",    -- Automatically update parsers on install/update

  config = function()
    -- New way (no more "nvim-treesitter.configs")
    require("nvim-treesitter").setup({
      -- List of parsers you want (add more as needed)
      ensure_installed = {
        "lua", "vim", "vimdoc", "query",
        "python", "javascript", "typescript", "html", "css",
        "bash", "markdown", "json", "yaml", "toml"
      },

      highlight = {
        enable = true,                    -- Enable syntax highlighting
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true,                    -- Better auto-indent
      },

      -- You can add more options here later (e.g. incremental_selection)
    })
  end,
}
