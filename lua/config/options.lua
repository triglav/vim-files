-- Make line numbers default
vim.wo.number = true

-- Use the appropriate number of spaces to insert a <Tab>.
vim.o.expandtab = true
-- Number of spaces that a <Tab> in the file counts for.
vim.o.tabstop = 2
-- Number of spaces to use for each step of (auto)indent.
vim.o.shiftwidth = 2
-- Round indent to multiple of 'shiftwidth'.  Applies to > and < commands.
vim.o.shiftround = true
-- Maximum width of text that is being inserted.
vim.o.textwidth = 100

-- This defines what bases Vim will consider for numbers when using the CTRL-A
-- and CTRL-X commands for adding to and subtracting from a number
-- respectively.
vim.o.nrformats = 'alpha,octal,hex'

-- Show trailing whitespace characters.
vim.o.listchars = 'tab:>-,trail:_'
vim.o.list = true

-- t - Auto-wrap text using textwidth
-- c - Auto-wrap comments using textwidth, inserting the current comment leader
--     automatically.
-- r - Automatically insert the current comment leader after hitting <Enter> in
--     Insert mode.
-- o - Automatically insert the current comment leader after hitting 'o' or 'O'
--     in Normal mode.
-- q - Allow formatting of comments with "gq".
-- n - When formatting text, recognize numbered lists.
-- 2 - When formatting text, use the indent of the second line of a paragraph
--     for the rest of the paragraph, instead of the indent of the first line.
-- j - Where it makes sense, remove a comment leader when joining lines.
vim.o.formatoptions = 'tcroqn2j'

-- Splitting a window will put the new window below/right of the current one.
vim.o.splitbelow = true
vim.o.splitright = true

-- If on Vim will wrap long lines at a character in 'breakat'.
vim.o.linebreak = true
-- String to put at the start of lines that have been wrapped.
vim.o.showbreak = '>> '
-- Enable break indent
vim.o.breakindent = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 5
-- The minimal number of columns to scroll horizontally.
vim.o.sidescroll = 3
-- The minimal number of screen columns to keep to the left and to the right of
-- the cursor if 'nowrap' is set.
vim.o.sidescrolloff = 10

-- The minimal height of a window, when it's not the current window.
vim.o.winminheight = 0
-- The minimal width of a window, when it's not the current window.
vim.o.winminwidth = 0

-- Enable mouse mode
vim.o.mouse = 'a'
-- When using the mouse or when using shifted special keys start Select mode
-- instead of Visual mode.
vim.o.selectmode = 'mouse,key'

-- Ignore case in search patterns.
vim.o.ignorecase = true
-- Override the 'ignorecase' option if the search pattern contains upper case
-- characters.
vim.o.smartcase = true
-- All matches in a line are substituted instead of one.
vim.o.gdefault = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 100

-- Vim will wait until either the complete mapping or key sequence has been
-- received, or it is clear that there is no mapping or key sequence for the
-- received characters.
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Show filler lines and as vertical splits
-- vim.o.diffopt = 'filler,vertical'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- A file that matches with one of these patterns is ignored when completing file
-- or directory names
vim.o.wildignore = '*.o,*.obj,*~,.svn,CVS,.git,.hg,*.a,*.exe,*.dll'

-- Complete the next full match.  After the last match, the original string is
-- used and then the first match again.
vim.o.wildmode = 'longest,full'

-- Use visual bell instead of beeping.
vim.o.visualbell = true

-- Save undo history
vim.o.undofile = true

-- When 'confirm' is on, certain operations that would normally fail because of
-- unsaved changes to a buffer, e.g. ":q" and ":e", instead raise a |dialog|
-- asking if you wish to save the current file(s).
vim.o.confirm = true

-- Use current directory to use for the file browser.
vim.o.browsedir = 'current'
