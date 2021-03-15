" Vim 'vimrc' file
" Maintainer: Matej Svec <matej@msvec.sk>

version 8.0

" This option has the effect of making Vim behave in a more useful way.
set nocompatible

" Init vim-plug
if has('win32')
  " Update vim-plug
  if empty(glob('~/vimfiles/autoload/plug.vim'))
    silent !curl -fLo ~/vimfiles/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
  call plug#begin('~/vimfiles/plugged')
else
  " Update vim-plug
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
  call plug#begin('~/.vim/plugged')
endif
Plug 'Nemo157/glsl.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'junegunn/vim-plug'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'triglav/googletest-syntax'
Plug 'triglav/vim-colors-tajga'
Plug 'triglav/vim-visual-increment'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-jp/cpp-vim'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/bufexplorer.zip'
call plug#end()


" PERSONAL (MODIFY THIS) {{{1


" Leader mappings
let g:mapleader = ","
let g:maplocalleader = ";"
" Author that shows up in some of the snippets
let g:snips_author = 'Triglav <trojhlav@gmail.com>'

" INTERFACE {{{1


" The last window will always have a status line.
set laststatus=2

" Print the line number in front of each line.
set number
" a
" use "(3 of 5)" instead of "(file 3 of 5)"
" use "[noeol]" instead of "[Incomplete last line]"
" use "999L, 888C" instead of "999 lines, 888 characters"
" use "[+]" instead of "[Modified]"
" use "[New]" instead of "[New File]"
" use "[RO]" instead of "[readonly]"
" use "[w]" instead of "written" for file write message and "[a]" instead of
" "appended" for ':w >> file' command
" use "[dos]" instead of "[dos format]", "[unix]" instead of "[unix format]"
" and "[mac]" instead of "[mac format]".
" o overwrite message for writing a file with subsequent message for reading a
" file
" O message for reading a file overwrites any previous message.
" I don't give the intro message when starting Vim |:intro|.
set shortmess=aoOI
" Splitting a window will put the new window below the current one.
set splitbelow
" Splitting a window will put the new window right of the current one.
set splitright


" Settings for GUI version.
" Get the fonts here:
" http://dejavu-fonts.org
if has('gui_running')
  if has('win32')
    " Maximize win32 Vim window.
    autocmd GUIEnter * simalt ~x
    " Set fonts.
    set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cEASTEUROPE
  else
    " Number of lines in the display.
    set lines=999
    " Number of columns of the screen. (78 + 8 + 4)
    set columns=999
    if has('mac')
      set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
    else
      set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
    endif
  endif
  " Number of pixel lines inserted between characters.
  set linespace=1
  " 'c' Use console dialogs instead of popup dialogs for simple choices.
  " 'i' Use a Vim icon.
  " 'g' Grey menu items: Make menu items that are not active grey.
  " 'p' Use Pointer callbacks for X11 GUI.
  set guioptions=cigp
  " Draw tabs via Cocoa in Macvim
  if has('mac')
    set guioptions+=e
  endif
  " Settings for console version.
else
  " Disable the recognition of special key codes in |<>| form in mappings,
  " abbreviations, and the "to" part of menu commands.
  set cpoptions-=<
  " 'wildcharm' works exactly like 'wildchar', except that it is recognized when
  " used inside a macro.
  set wildcharm=<C-Z>
endif


" Lines longer than the width of the window will wrap and displaying
" continues on the next line.
set wrap
" If on Vim will wrap long lines at a character in 'breakat'.
set linebreak
" String to put at the start of lines that have been wrapped.
set showbreak=>>\ 
" Show filler lines and as vertical splits
set diffopt=filler,vertical


" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=3
" The minimal number of columns to scroll horizontally.
set sidescroll=1
" The minimal number of screen columns to keep to the left and to the right of
" the cursor if 'nowrap' is set.
set sidescrolloff=10


" Minimal initial height of the help window when it is opened with the ":help"
" command.
set helpheight=10
" Minimal number of lines for the current window.
set winheight=2
" The minimal height of a window, when it's not the current window.
set winminheight=0
" The minimal width of a window, when it's not the current window.
set winminwidth=0


" When using the mouse or when using shifted special keys start Select mode
" instead of Visual mode.
set selectmode=mouse,key
" Using a shifted special key starts selection.
set keymodel=startsel
" The last character of the selection is included in an operation.
set selection=old


" Encoding used for the terminal.  This specifies what character encoding the
" keyboard produces and the display will understand.
if (($term == "rxvt-unicode") || ($term =~ "xterm") || ($term =~ "screen")) && (&termencoding == "")
  set termencoding=utf-8
endif


" When this option is set, the screen will not be redrawn while executing
" macros, registers and other commands that have not been typed.
set nolazyredraw


" COMMAND LINE {{{1


" A history of ":" commands, and a history of previous search patterns are
" remembered.
set history=1000


" If in Insert, Replace or Visual mode put a message on the last line.
set showmode
" Show (partial) command in status line.
set showcmd
" Number of screen lines to use for the command-line.
set cmdheight=1
" Number of screen lines to use for the command-line window.
set cmdwinheight=7

" A file that matches with one of these patterns is ignored when completing file
" or directory names
set wildignore=*.o,*.obj,*~,.svn,CVS,.git,.hg,*.a,*.exe,*.dll
" command-line completion operates in an enhanced mode. On pressing 'wildchar'
" to invoke completion, the possible matches are shown just above the command
" line, with the first match highlighted.
set wildmenu
" Character you have to type to start wildcard expansion in the command-line.
set wildchar=<Tab>
" Complete the next full match.  After the last match, the original string is
" used and then the first match again.
set wildmode=longest,full


" SEARCH {{{1


" Ignore case in search patterns.
set ignorecase
" Override the 'ignorecase' option if the search pattern contains upper case
" characters.
set smartcase
" While typing a search pattern, show immediately where the so far typed
" pattern matches.
set incsearch
" When there is a previous search pattern, highlight all its matches.
set hlsearch
" All matches in a line are substituted instead of one.
set gdefault

" Pattern to be used to find a macro definition.
set define=^\(#\s*define\|[a-z]*\s*const\s*[a-z]*\)


" SYNTAX {{{1

" Enable true color in terminal
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
" use 256 colors in xterm
elseif &term =~ "xterm"
  let &g:t_Co=256
endif

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut=''

" Enable syntax highlighting.
syntax on
" Load color scheme.
set background=dark
colorscheme tajga

" The 'cinoptions' affect the way 'cindent' reindents lines in a C program.
" :0    - place case labels 0 characters from the indent of the switch()
" g0    - place C++ scope declarations (protected:) 0 characters from the indent of the block they are in
" U1    - do not ignore the parentheses indenting in case the unclosed parentheses is the first non-white
"         character in its line
" N-s   - do not indent inside C++ namespace
" j1    - indent anonymous classes/functions correctly (or fail trying)
" l1    - align with a case label instead of the statement after it in the same line
set cinoptions=:0g0U1N-sj1l1

" List of items that control the format of the printed output.
" - A4 paper format
" - Wrap long lines.
" - Do not use syntax highlighting.
" - When a form feed character is encountered, continue printing of the current
"   line at the beginning of the first line on a new page.
set printoptions=paper:a4,wrap:y,syntax:n,formfeed:y


" FILE {{{1


" To overrule the automatic choice of the language.
let $LANG='en'
" Sets the character encoding used inside Vim.
set encoding=utf-8
" This is a list of character encodings considered when starting to edit a
" file.
set fileencodings=utf-8,iso-8859-2
" The character encoding used when printing.
set printencoding=utf-8
" This gives the <NL> of the current buffer, which is used for reading/writing
" the buffer from/to a file.
set fileformat=unix
" This gives the end-of-line (<EOL>) formats that will be tried.
" dos   <CR> <NL>
" unix  <NL>
set fileformats=unix,dos


" This switches on filetype detection, using filetype plugin files, using
" indent files.
filetype plugin indent on


" When a file has been detected to have been changed outside of Vim and it has
" not been changed inside of Vim, automatically read it again.
set autoread


" EDIT {{{1


" Allow backspacing over autoindent, line breaks, the start of insert.
set backspace=indent,eol,start
" When a bracket is inserted, briefly jump to the matching one.
set showmatch
" Vim will wait until either the complete mapping or key sequence has been
" received, or it is clear that there is no mapping or key sequence for the
" received characters.
set notimeout
set nottimeout
" Insert only one space after a '.', '?' and '!' with a join command.
set nojoinspaces

" Use the appropriate number of spaces to insert a <Tab>.
set expandtab
" Number of spaces that a <Tab> in the file counts for.
set tabstop=2
" Number of spaces to use for each step of (auto)indent.
set shiftwidth=2
" Round indent to multiple of 'shiftwidth'.  Applies to > and < commands.
set shiftround

" Copy indent from current line when starting a new line.
set autoindent
" t - Auto-wrap text using textwidth
" c - Auto-wrap comments using textwidth, inserting the current comment leader
"     automatically.
" r - Automatically insert the current comment leader after hitting <Enter> in
"     Insert mode.
" o - Automatically insert the current comment leader after hitting 'o' or 'O'
"     in Normal mode.
" q - Allow formatting of comments with "gq".
" n - When formatting text, recognize numbered lists.
" 2 - When formatting text, use the indent of the second line of a paragraph
"     for the rest of the paragraph, instead of the indent of the first line.
" j - Where it makes sense, remove a comment leader when joining lines.
set formatoptions=tcroqn2j

" As much as possible of the last line in a window will be displayed.
set display=lastline

" Maximum width of text that is being inserted.
set textwidth=80

" This defines what bases Vim will consider for numbers when using the CTRL-A
" and CTRL-X commands for adding to and subtracting from a number
" respectively.
set nrformats=alpha,octal,hex

" Show trailing whitespace characters.
set listchars=tab:>-,trail:_
set list

" When completing a word in insert mode from the tags file, show both the tag
" name and a tidied-up form of the search pattern (if there is one) as
" possible matches.
set showfulltag

" When switching between buffers, jump to the first open window that contains
" the specified buffer.
set switchbuf=useopen
" When on a buffer becomes hidden when it is abandoned.
set hidden

set visualbell

" - Use a popup menu to show the possible completions.  The menu is only shown
"   when there is more than one match and sufficient colors are available.
" - Use the popup menu also when there is only one match. Useful when there is
"   additional information about the match, e.g., what file it comes from.
" - Only insert the longest common text of the matches.  If the menu is
"   displayed you can use CTRL-L to add more characters.  Whether case is
"   ignored depends on the kind of completion.  For buffer text the 'ignorecase'
"   option is used.
set completeopt=menu,menuone,longest


" SHELL {{{1


if has('win32')
  " Name of the shell to use for ! and :! commands.
  "set shell=c:\cygwin\bin\bash.exe\ --login
  let &g:shell=$COMSPEC

  if !has("nvim")
    " Always use the shell.
    " Use "shell 'shellcmdflag' cmd" to start external commands.
    set shelltype=0
  endif

  " String to be used to put the output of the ":make" command in the error
  " file.
  "set shellpipe=2>&1>
  set shellpipe=>%s\ 2>&1
  " A forward slash is used when expanding file names.
  "set shellslash
  set noshellslash
  " String to be used to put the output of a filter command in a temporary file.
  set shellredir=>%s\ 2>&1
  " Quoting character(s), put around the command passed to the shell, for the
  " "!" and ":!" commands.
  "set shellquote=\"
  set shellquote=
  " Quoting character(s), put around the command passed to the shell, for the
  " "!" and ":!" commands.
  "    set shellxquote=\"
  set shellxquote=
  " Flag passed to the shell to execute "!" and ":!" commands.
  set shellcmdflag=/c
endif


" SWAP & BACKUP & UNDO {{{1


" Write the contents of the file, if it has been modified, on each :next,
" :rewind, :last, :first, :previous, :stop, :suspend, :tag, :!, :make, CTRL-]
" and CTRL-^ command; and when a CTRL-O, CTRL-I, '{A-Z0-9}, or `{A-Z0-9}
" command takes one to another file.
set autowrite

" When 'confirm' is on, certain operations that would normally fail because of
" unsaved changes to a buffer, e.g. ":q" and ":e", instead raise a |dialog|
" asking if you wish to save the current file(s).
set confirm

" Make a backup before overwriting a file.  Leave it around after the file has
" been successfully written.
set backup
" Use a swapfile for the buffer.
set swapfile
" List of directory names for the backup & swap files, separated with commas.
if has('win32')
  set backupdir=$HOME/vimfiles/tmp/backup
  set directory=$HOME/vimfiles/tmp/swap
elseif has('unix')
  set backupdir=$HOME/.vim/tmp/backup
  set directory=$HOME/.vim/tmp/swap
endif
" After typing this many characters the swap file will be written to disk.
set updatecount=50
if !has('nvim')
  " Maximum amount of memory (in Kbyte) to use for one buffer.
  set maxmem=2048
  " Maximum amount of memory (in Kbyte) to use for all buffers together.
  set maxmemtot=10240
endif

if has("persistent_undo")
  " List of directory names for undo files, separated with commas.
  if has('win32')
    set undodir=$HOME/vimfiles/tmp/undo
  elseif has('unix')
    set undodir=$HOME/.vim/tmp/undo
  endif
  set undofile
endif

" "folds"     manually created folds, opened/closed folds and local fold options
" "cursor"    cursor position in file and in window
" "curdir"    local current directory, if set with |:lcd|
set viewoptions=folds,cursor,curdir

" Changes the effect of the |:mksession| command.
" "blank"     empty windows
" "buffers"   hidden and unloaded buffers, not just those in windows
" "curdir"    the current directory
" "folds"     manually created folds, opened/closed folds and local fold options
" "help"      the help window
" "tabpages"  all tab pages; without this only the current tab page is restored,
"             so that you can make a session for each tab page separately
" "winsize"   window sizes
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize


" PATH {{{1


" Use current directory to use for the file browser.
set browsedir=current


if has('win32')
  " This is a list of directories which will be searched when using the |gf|,
  " [f, ]f, ^Wf, |:find| and other commands, provided that the file being
  " searched for has a relative path
  set path=.,$MINGW/include
elseif has('unix')
  " This is a list of directories which will be searched when using the |gf|,
  " [f, ]f, ^Wf, |:find| and other commands, provided that the file being
  " searched for has a relative path
  set path=.,/usr/local/include,/usr/include
endif


" FOLDING {{{1


if has('gui_running')
  set foldcolumn=3
else
  set foldcolumn=0
endif
set foldminlines=1

set foldmethod=marker
set foldmarker={{{,}}}


" VIMRC & VIMINFO {{{1


" Enables the reading of .vimrc, .exrc and .gvimrc in the current directory.
set noexrc
" ":autocmd", shell and write commands are not allowed in ".vimrc" and ".exrc"
" in the current directory and map commands are displayed.
set secure


" Maximum number of previously edited files for which the marks are remembered
" is 50.
" Maximum number of lines saved for each register is 500.
" Disable the effect of 'hlsearch' when loading the viminfo file.
set viminfo='50,\"500,h
if has('win32')
  set viminfo+=rA:
elseif has('unix')
  set viminfo+=r/floppy
endif


" CUSTOM KEY REMAPPING {{{1


" Remove the annoying F1 help bind
nnoremap <F1> <Esc>
inoremap <F1> <Esc>
vnoremap <F1> <Esc>

" Remove the annoying Q ex mode bind
nnoremap Q <Nop>

" Move by screen lines instead of file line.
nnoremap <silent> j gj
nnoremap <silent> k gk

" Indent with tab also and keep the selection active
vnoremap <silent> <tab> >gv
vnoremap <silent> <s-tab> <gv
vnoremap <silent> > >gv
vnoremap <silent> < <gv

" Set CTRL+C, CTRL+X, CTRL+V for non-mac systems (Taken from mswin.vim)
if !has('mac')
  " CTRL-X is Cut
  vnoremap <C-X> "+x
  " CTRL-C and CTRL-Insert are Copy
  vnoremap <C-C> "+y
  " CTRL-V and SHIFT-Insert are Paste
  cmap <C-V> <C-R>+

  " Pasting blockwise and linewise selections is not possible in Insert and
  " Visual mode without the +virtualedit feature.  They are pasted as if they
  " were characterwise instead.
  " Uses the paste.vim autoload script.
  exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
  exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']
endif

" Keys for switching between tabs in normal mode.
nnoremap <Leader>tt :tabnew<CR>
nnoremap <Leader>t1 :tabn 1<CR>
nnoremap <Leader>t2 :tabn 2<CR>
nnoremap <Leader>t3 :tabn 3<CR>
nnoremap <Leader>t4 :tabn 4<CR>
nnoremap <Leader>t5 :tabn 5<CR>
nnoremap <Leader>t6 :tabn 6<CR>
nnoremap <Leader>t7 :tabn 7<CR>
nnoremap <Leader>t8 :tabn 8<CR>
nnoremap <Leader>t9 :tabn 9<CR>
nnoremap <Leader>t0 :tabn 10<CR>
nnoremap <Leader>tn :tabn<CR>
nnoremap <Leader>tp :tabp<CR>
nnoremap <Leader>tc :tabc<CR>

" Easily resize split windows with Ctrl+hjkl
nnoremap <C-j> <C-w>+
nnoremap <C-k> <C-w>-
nnoremap <C-h> <C-w><
nnoremap <C-l> <C-w>>

nnoremap <return> :noh<return><esc><return>
nnoremap Y y$

" Toggle pastemode easily in insert and command mode.
set pastetoggle=<F4>
" Always disable paste mode when leaving insert mode.
autocmd InsertLeave * set nopaste


" CUSTOM COMMANDS {{{1


if has('unix')
  " Use :w!! to write to a file using sudo if you forgot to "sudo vim file".
  cmap w!! %!sudo tee > /dev/null %
endif


" Strip all trailing whitespace in the current file.
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" Reselect the text that was just pasted.
nnoremap <leader>v `[v`]
nnoremap <leader>V `[V`]
" Force redraw.
nnoremap <Leader>r :redraw!<CR>
" Open bufexplorer.
nnoremap <Leader>m :BufExplorer<CR>
" Easily change directory to the file being edited.
nmap <Leader>cd :cd %:p:h<CR>
" Easy toggle list
nnoremap <Leader>l :set list!<CR>
" Easy toggle wrap
nnoremap <Leader>w :set wrap!<CR>

" Fugitive commands
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gs :Gstatus<CR>

" Diff commands
nnoremap <Leader>dt :diffthis<CR>
nnoremap <Leader>do :diffoff<CR>
nnoremap <Leader>du :diffupdate<CR>

" Delete the current file
nnoremap <C-S-Del> :call delete(expand('%'))<CR>


" CUSTOM ABBREVIATIONS {{{1


inoreabbrev didnt didn't
inoreabbrev doesnt doesn't
inoreabbrev dont don't
inoreabbrev fro for
inoreabbrev Im I'm
inoreabbrev shoudl should
inoreabbrev teh the
inoreabbrev yuo you


cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev WQ wq
cnoreabbrev Wq wq
cnoreabbrev Qa qa
cnoreabbrev QA qa
cnoreabbrev Wa wa
cnoreabbrev WA wa


" PLUGIN Tagbar {{{1


let g:tagbar_autoclose = 1
let g:tagbar_left = 1
nnoremap <silent> <F12> :TagbarToggle<CR>
map <C-F12> :silent !ctags -R --c++-kinds=+p --fields=+iaSl --extra=+q .<CR>

if has('win32')
  set tags+=$HOME/vimfiles/tags/cpp
  set tags+=$HOME/vimfiles/tags/sdl
elseif has('unix')
  set tags+=$HOME/.vim/tags/cpp
  set tags+=$HOME/.vim/tags/sdl
endif


" PLUGIN vim-airline {{{1


let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_inactive_collapse = 1
let g:airline_powerline_fonts = has('gui_running')

if !has('gui_running')
  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline_section_z=''
endif

let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_x = airline#section#create(['%n:', 'filetype'])
let g:airline_theme = 'kalisi'


" PLUGIN YouCompleteMe {{{1


let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_show_diagnostics_ui = 0
let g:ycm_extra_conf_globlist = ['./.ycm_extra_conf.py']


" PLUGIN ctrlp {{{1


" Enable cross-sessions caching by not clearing the cache files upon exiting Vim
let g:ctrlp_clear_cache_on_exit = 0
" Set the directory to store the cache files
if has('win32')
  let g:ctrlp_cache_dir = $HOME.'/vimfiles/tmp/ctrlp'
elseif has('unix')
  let g:ctrlp_cache_dir = $HOME.'/.vim/tmp/ctrlp'
endif
" Use a version control listing command when inside a repository
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']

