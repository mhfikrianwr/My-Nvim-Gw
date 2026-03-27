return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Wakatime
  { 
    'wakatime/vim-wakatime', lazy = false, 
  },

  -- Code Runner 
  {
    "CRAG666/code_runner.nvim",
    lazy = false,
    config = function()
      require("code_runner").setup(require("configs.code_runner"))
    end,
  },

  -- test new blink

  { import = "nvchad.blink.lazyspec" },
  

  -- tree sitter 
  {
   	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
        "html", "css"
   		},
   	},
   },

   -- Discord rich presence
   {
  "IogaMaster/neocord",
  event = "VeryLazy",
  config = function()
    require("neocord").setup({
      logo = "auto",
      main_image = "language",
      show_time = true,
      global_timer = true,
      editing_text = "Editing %s",
      file_explorer_text = "Browsing %s",
      workspace_text = "Working on %s",
      terminal_text = "Using Terminal",
    })
  end,
  },
}
