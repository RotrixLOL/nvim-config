return {
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate', },
  { 'jose-elias-alvarez/null-ls.nvim', event = "InsertEnter" }, -- formatters and linters
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      {
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
        keys = {
          { "<leader>M", "<cmd>Mason<cr>", desc = "Mason" }
        }
      },

      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      {
        "L3MON4D3/LuaSnip",
        build = (not jit.os:find("Windows"))
            and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
            or nil,
        dependencies = {
          "rafamadriz/friendly-snippets",
          config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
          end,
        },
        opts = {
          history = true,
          delete_check_events = "TextChanged",
        },
      },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
    },
  },
}
