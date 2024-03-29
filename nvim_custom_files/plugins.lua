local plugins = {

  { "elkowar/yuck.vim" , lazy = false },  -- load a plugin at startup

  -- You can use any plugin specification from lazy.nvim

  -- this opts will extend the default opts 
{
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",
        "python",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",

       -- low level
        "c",
        "zig"
      },
    },
  },

{
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
},
  
  -- {
  --   "folke/which-key.nvim",
  --   enabled = false,
  -- },

  -- If your opts uses a function call, then make opts spec a function*
  -- should return the modified default config as well
  -- here we just call the default telescope config 
  -- and then assign a function to some of its options
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local conf = require "plugins.configs.telescope"
      conf.defaults.mappings.i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<Esc>"] = require("telescope.actions").close,
      }

      return conf
    end,
  }
}

return plugins
