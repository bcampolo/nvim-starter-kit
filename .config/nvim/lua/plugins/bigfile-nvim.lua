-- Improve performance of editing big files
return {
  -- https://github.com/LunarVim/bigfile.nvim
  'LunarVim/bigfile.nvim',
  event = 'BufReadPre',
  opts = {
    filesize = 2, -- size of the file in MiB, the plugin round file sizes to the closest MiB
  },
  config = function (_, opts)
    require('bigfile').setup(opts)
  end
}
