-- This file is for my custom keymaps

local keymap = vim.keymap.set

-- auto select block
keymap('n', '<leader>e', 'V$%', { desc = 'Select chunk' })
keymap('v', '<leader>e', '$%', { desc = 'Continue select chunk' })

-- eacy visual intentation
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Cursorless Line Addition
-- Add a line above/below without moving the cursor's column
keymap('n', '<leader>O', 'mxO<Esc>`x', { desc = 'Add line above' })
keymap('n', '<leader>o', 'mxo<Esc>`x', { desc = 'Add line below' })

-- Window Management

-- Split windows
keymap('n', '<leader>v', '<C-w>v<C-w>l', { desc = 'Split window vertically' })
-- Note: Your original config had a 'map <leader>h' that was overridden by the 'nnoremap' below.
-- This conversion only includes the final, active keymap.
keymap('n', '<leader>h', '<C-w>s<C-w>j', { desc = 'Split window horizontally' })

-- Navigate window splits
keymap('n', '<leader>h', '<C-w>h', { desc = 'Navigate to left split' })
keymap('n', '<leader>j', '<C-w>j', { desc = 'Navigate to below split' })
keymap('n', '<leader>k', '<C-w>k', { desc = 'Navigate to above split' })
keymap('n', '<leader>l', '<C-w>l', { desc = 'Navigate to right split' })

-- Move window splits
keymap('n', '<leader><S-h>', '<C-w><S-h>', { desc = 'Move split left' })
keymap('n', '<leader><S-j>', '<C-w><S-j>', { desc = 'Move split down' })
keymap('n', '<leader><S-k>', '<C-w><S-k>', { desc = 'Move split up' })
keymap('n', '<leader><S-l>', '<C-w><S-l>', { desc = 'Move split right' })

---
-- Tab Management

-- Create, close, and manage tabs
keymap('n', '<leader>tc', ':tabnew<CR>', { desc = 'New tab' })
keymap('n', '<leader>tq', ':tabclose<CR>', { desc = 'Close current tab' })
keymap('n', '<leader>to', ':tabonly<CR>', { desc = 'Close all other tabs' })

-- Navigate tabs
keymap('n', '<A-n>', ':tabnext<CR>', { desc = 'Next tab' })
keymap('n', '<A-p>', ':tabprev<CR>', { desc = 'Previous tab' })
