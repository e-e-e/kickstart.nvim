-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'folke/zen-mode.nvim',
    dependencies = { 'folke/twilight.nvim' },
    keys = {
      { '<leader>p', '<cmd>ZenMode<cr>', desc = 'Toggle Zen Mode' },
    },
    opts = {
      window = {
        width = function()
          return math.min(120, math.floor(vim.o.columns * 0.85))
        end,
        options = {
          signcolumn = 'no',
          number = false,
          relativenumber = false,
          cursorline = false,
        },
      },
      plugins = {
        twilight = { enabled = true },
      },
    },
  },
  {
    'folke/twilight.nvim',
    opts = {
      context = 10,
    },
  },
}
