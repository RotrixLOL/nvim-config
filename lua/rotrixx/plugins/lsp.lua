return {
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate', },
  {'jose-elias-alvarez/null-ls.nvim', event = "InsertEnter"}, -- formatters and linters
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

      {'neovim/nvim-lspconfig'},
      {'williamboman/mason-lspconfig.nvim'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
    },
	},
}
