vim.keymap.set('n', '<Esc>', '<Cmd>noh<CR>')
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set({ 'n', 'v', 'i' }, '<F1>', '<Esc>', { remap = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Indent with tab also and keep the selection active
vim.keymap.set('v', '<tab>', '>gv', { silent = true })
vim.keymap.set('v', '<s-tab>', '<gv', { silent = true })
vim.keymap.set('v', '>', '>gv', { silent = true })
vim.keymap.set('v', '<', '<gv', { silent = true })

-- Emulate the original behaviour/bindings of 'triglav/vim-visual-increment'
vim.keymap.set('v', '<C-a>', 'g<C-a>')
vim.keymap.set('v', '<C-x>', 'g<C-x>')
vim.keymap.set('v', 'g<C-a>', '<C-a>')
vim.keymap.set('v', 'g<C-x>', '<C-x>')

-- Set CTRL+C and CTRL+V
vim.keymap.set('v', '<C-c>', '"+y')
vim.keymap.set('i', '<C-v>', '<C-r>+')

-- Keys for switching between tabs in normal mode
vim.keymap.set('n', '<Leader><Tab><Tab>', '<Cmd>tabnew<CR>')
vim.keymap.set('n', '<Leader><Tab>1', '<Cmd>tabn 1<CR>')
vim.keymap.set('n', '<Leader><Tab>2', '<Cmd>tabn 2<CR>')
vim.keymap.set('n', '<Leader><Tab>3', '<Cmd>tabn 3<CR>')
vim.keymap.set('n', '<Leader><Tab>4', '<Cmd>tabn 4<CR>')
vim.keymap.set('n', '<Leader><Tab>5', '<Cmd>tabn 5<CR>')
vim.keymap.set('n', '<Leader><Tab>6', '<Cmd>tabn 6<CR>')
vim.keymap.set('n', '<Leader><Tab>7', '<Cmd>tabn 7<CR>')
vim.keymap.set('n', '<Leader><Tab>8', '<Cmd>tabn 8<CR>')
vim.keymap.set('n', '<Leader><Tab>9', '<Cmd>tabn 9<CR>')
vim.keymap.set('n', '<Leader><Tab>0', '<Cmd>tabn 10<CR>')
vim.keymap.set('n', '<Leader><Tab>h', '<Cmd>tabp<CR>')
vim.keymap.set('n', '<Leader><Tab>l', '<Cmd>tabn<CR>')
vim.keymap.set('n', '<Leader><Tab>x', '<Cmd>tabc<CR>')

-- Easily move between split windows with Ctrl+hjkl
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Easily resize split windows with Alt+hjkl
vim.keymap.set('n', '<A-j>', '<C-w>+')
vim.keymap.set('n', '<A-k>', '<C-w>-')
vim.keymap.set('n', '<A-h>', '<C-w><')
vim.keymap.set('n', '<A-l>', '<C-w>>')

-- Strip all trailing whitespace in the current file.
vim.keymap.set('n', '<leader>W', '<Cmd>%s/\\s\\+$//<cr>:let @/=""<CR>')

-- Easily change directory to the file being edited.
vim.keymap.set('n', '<Leader>cd', '<Cmd>cd %:p:h<CR>')
-- Easy toggle list
vim.keymap.set('n', '<Leader>l', '<Cmd>set list!<CR>')
-- Easy toggle spell
vim.keymap.set('n', '<Leader>s', '<Cmd>set spell!<CR>')
-- Easy toggle wrap
vim.keymap.set('n', '<Leader>w', '<Cmd>set wrap!<CR>')

-- Diff commands
vim.keymap.set('n', '<Leader>dt', '<Cmd>diffthis<CR>')
vim.keymap.set('n', '<Leader>do', '<Cmd>diffoff<CR>')
vim.keymap.set('n', '<Leader>du', '<Cmd>diffupdate<CR>')
