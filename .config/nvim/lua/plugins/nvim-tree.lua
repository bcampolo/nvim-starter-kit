-- File Explorer / Tree
return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- Fancy icon support
  },
  opts = {
    actions = {
      open_file = {
        window_picker = {
          enable = false
        },
      }
    },
  },
  config = function (_, opts)
    -- Recommended settings to disable default netrw file explorer
    vim.g.loaded = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup(opts)
  end
}

