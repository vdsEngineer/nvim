return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconf.init")
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", "stylua",
        "prettier", "phpactor", "gopls"
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
    },
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function() end
  },
  {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    lazy = false,
    config = function()
      require("harpoon").setup({})
      require("telescope").load_extension('harpoon')
    end
  },
  {
    "fatih/vim-go",
    ft = "go",
    lazy = false,
  },
  {
    'luozhiya/fittencode.nvim',
    lazy = false,
    config = function()
      require("configs.fittencode")
    end,
  }
}
