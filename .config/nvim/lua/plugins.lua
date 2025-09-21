require("lazy").setup({
  { "nvim-lualine/lualine.nvim", config = true },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-tree/nvim-tree.lua", config = true },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  -- LSP
  { "neovim/nvim-lspconfig" },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip"
    },
  },
  -- Git
  { "tpope/vim-fugitive" },
})
