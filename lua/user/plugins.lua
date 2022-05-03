-- Additional Plugins
lvim.plugins = {
  { "lunarvim/colorschemes"},
  { "folke/tokyonight.nvim" },
  { "folke/lsp-colors.nvim" },
  { "mfussenegger/nvim-jdtls" },
  { 
    "p00f/nvim-ts-rainbow",
    config = function ()
      require('nvim-treesitter.configs').setup {
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
        }
      }
    end,
  },
  { 
    "nvim-treesitter/playground", 
    event = "BufRead",
  },
  { "bluz71/vim-moonfly-colors" },
  { "yamatsum/nvim-nonicons" },
 -- { 
 --   "norcalli/nvim-colorizer.lua",
 --   config = function ()
 --     require('colorizer').setup({"*"}, {
 --       RGB = true,         -- #RGB hex codes
 --       RRGGBB = true,      -- #RRGGBB hex codes
 --       RRGGBBAA = true,    -- #RRGGBBAA hex codes
 --       rgb_fn = true,      -- CSS rgb() and rgba() functions
 --       hsl_fn = true,      -- CSS hsl() and hsla() functions
 --       css = true,         -- Enable all CSS features: rgb_fn, hsl_fn, names, RRGGBB
 --       css_fn = true,      -- Enable all CSS *functions*: rgb_fn, hsl_fn
 --     })
 --   end,
 -- },
--  {
--    "karb94/neoscroll.nvim",
--    config = function ()
--      require('neoscroll').setup({
--        mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f',
--        '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
--        hide_cursor = true,             -- Hide cursor while scrolling
--        stop_eof = true,                -- Stop at <EOF> when scrolling downwards.
--        use_local_scrolloff = false,    -- Use the local scope of scroll off instead of the global scope.
--        respect_scrolloff = false,      -- Stop scrolling when the cursor reaches the scrolloff margin of the file.
--        cursor_scrolls_alone = true,    -- The cursor will keep on scrolling even if the window cannot scroll further.
--        easing_function = nil,          -- Default easing function.
--        pre_hook = nil,                 -- Function to run before the scrolling animation starts.
--        post_hook = nil,                -- Function to run after the scrolling animation ends.
--      })
--    end
--  },
  { "kosayoda/nvim-lightbulb" },
  { "ray-x/navigator.lua" },
  { "liuchengxu/vista.vim" },
  { 
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "windwp/nvim-ts-autotag",
    config =  function ()
      require('user.autotag').config()
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = function ()
      require('user.outline').config()
    end,
  },
  {
    "metakirby5/codi.vim",
    cmd = "Codi",
  },
  { "dccsillag/magma-nvim" },
  { 
    "kevinhwang91/nvim-bqf",
    event = "BufRead",
  },
  -- { "ChristianChiarulli/vim-solidity" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  {
    "pwntester/octo.nvim",
    event = "BufRead",
    config = function ()
      require("user.octo").config()
    end,
  },
  {
    "filipdutescu/renamer.nvim",
    config = function ()
      require('user.renamer').config()
    end,
    branch = "master",
  },
  {
    "unblevable/quick-scope",
    config = function ()
      require('user.quickscope')
    end,
  },
  {
    "kevinhwang91/rnvimr",
    config = function ()
      require('user.rnvimr')
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function ()
      require('user.blankline').config()
    end,
  },
  {
    "f-person/git-blame.nvim",
    config = function ()
      vim.g.gitblame_enabled = 0
      vim.g.gitblame_message_template = "<summary> • <date> • <author>"
      vim.g.gitblame_highlight_group = "LineNr"
    end,
  },
  {
    "ruifm/gitlinker.nvim",
    event = "BufRead",
    config =function ()
      require('user.gitlinker').config()
    end,
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function ()
      require('user.hop').config()
    end,
  },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function ()
      require('user.matchup')
    end,
  },
  {
    "monaqa/dial.nvim",
    event = "BufRead",
    config = function ()
      require('user.dial').config()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function ()
      require('user.colorizer').config()
    end,
  },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function ()
      require('user.spectre').config()
    end,
  },
  {
    "folke/zen-mode.nvim",
    config = function ()
      require('user.zen').config()
    end,
  },
  {
    "karb94/neoscroll.nvim",
    config = function ()
      require('user.neoscroll')
    end,
  },
  {
    "folke/todo-comments.nvim",
    config = function ()
      require('user.todo_comments').config()
    end,
  },
  {
    "tzachar/cmp-tabnine",
    config = function ()
      local tabnine = require('cmp_tabnine.config')
      tabnine:setup {
        max_lines = 1000,
        max_num_results = 20,
        sort = true,
      }
    end,

    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
  },
  { 
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown"
  },
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  { "ThePrimeagen/harpoon" },
  {
    "MattesGroeger/vim-bookmarks",
    config = function ()
      -- highlight BookmarkSign ctermbg=NONE ctermfg=160
      -- highlight BookmarkLine ctermbg=194 ctermfg=NONE
      vim.g.bookmark_sign = ""
      vim.g.bookmark_annotation_sign = '☰'
      vim.g.bookmark_no_default_key_mappings = 1
      vim.g.bookmark_auto_save = 0
      vim.g.bookmark_auto_close = 0
      vim.g.bookmark_manage_per_buffer = 0
      vim.g.bookmark_save_per_working_dir = 0
      -- vim.g.bookmark_highlight_lines = 1
      vim.g.bookmark_show_warning = 0
      vim.g.bookmark_center = 1
      vim.g.bookmark_location_list = 0
      vim.g.bookmark_disable_ctrlp = 1
      vim.g.bookmark_display_annotation = 0
      -- vim.g.bookmark_auto_save_file = '~/.config/lvim/bookmarks'
    end,
    commit = "a86f6387a5dabf0102b4cab433b414a29456f792"
  },
  { 'tom-anders/telescope-vim-bookmarks.nvim' },
}
