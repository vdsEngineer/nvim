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
  -- {
  --   "Exafunction/codeium.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "hrsh7th/nvim-cmp",
  --   },
  --   lazy = false,
  --   config = function()
  --     require("codeium").setup({})
  --   end
  -- },
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      vim.keymap.set({ 'n', 'x', 'o' }, 'ff', '<Plug>(leap-forward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'FF', '<Plug>(leap-backward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'ffg', '<Plug>(leap-from-window)')
    end
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

      vim.keymap.set("n", "ha", ':lua require("harpoon.mark").add_file()<CR>')
      vim.keymap.set("n", "hm", ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
      vim.keymap.set("n", "hp", ':lua require("harpoon.ui").nav_prev()<CR>')
      vim.keymap.set("n", "hn", ':lua require("harpoon.ui").nav_next()<CR>')
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
      require('fittencode').setup()
    end,
  }
}
