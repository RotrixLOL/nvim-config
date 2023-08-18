return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  },

  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { "<leader>ff",  "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fif", "<cmd>Telescope live_grep<cr>",  desc = "Find in Files" },
      { "<leader>fg",  "<cmd>Telescope git_files<cr>",  desc = "Find in Git" },
      { "<leader>fb",  "<cmd>Telescope buffers<cr>",    desc = "Find Buffers" },
    }
  },

  -- Colorscheme
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme catppuccin]])
    end
  },

  -- Enable transparency
  "xiyaowong/transparent.nvim",

  {
    "folke/todo-comments.nvim",
    event = "BufEnter",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    keys = {
      { "<leader>tl", "<cmd>TodoTelescope<cr>",                            desc = "List" },
      { "<leader>tn", function() require("todo-comments").jump_next() end, desc = "Next" },
      { "<leader>tb", function() require("todo-comments").jump_prev() end, desc = "Back" },
    },
    config = function()
      require("todo-comments").setup()
    end,
  },

  {
    "f-person/git-blame.nvim",
    event = "BufEnter"
  },

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },

  -- Code completion - requires `:Codeium Auth`
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    keys = {
      {
        "<C-g><tab>",
        function() return vim.fn['codeium#Accept']() end,
        mode = "i",
        desc =
        "Accept codeium suggestion"
      },
      {
        "<C-g>[",
        function() return vim.fn['codeium#CycleCompletions'](-1) end,
        mode = "i",
        desc =
        "Previous codeium suggestion"
      },
      {
        "<C-g>]",
        function() return vim.fn['codeium#CycleCompletions'](1) end,
        mode = "i",

        desc =
        "Next codeium suggestion"
      },
    }
  },

  -- Custom notifications
  {
    "rcarriga/nvim-notify",
    config = function()
      vim.notify = require("notify")
    end,
    opts = {
      background_colour = "#000000"
    }
  },

  {
    'goolord/alpha-nvim',
    requires = { 'BlakeJC94/alpha-nvim-fortune' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
    end
  },

  -- Language specific
  "prisma/vim-prisma" -- prisma highlighting
}
