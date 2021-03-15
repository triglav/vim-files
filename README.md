# Triglav's Vim files

## Download

Clone the repository and download submodules:

    $ git clone --recursive https://github.com/triglav/vim-files.git ~/.vim

Get the most recent version of submodules:

    $ cd ~/.vim
    $ git submodule update --remote --merge --recursive

## Installation

Create `.vimrc` link in your home directory:

    $ ln -s ~/.vim/.vimrc ~/.vimrc

Generate Vim doc tags with pathogen:

    :Helptags

Compile YCM: http://valloric.github.io/YouCompleteMe/#installation

    $ cd bundle/you-complete-me
    $ ./install.sh --clang-completer

### Override `.vimrc`

If you would like to override some of the default settings, you can create your
own `~/.vimrc` containing following line:

    source ~/.vim/.vimrc

### Fonts

I am using _DejaVu Sans Mono for Powerline_ fonts on every platform (vim-airline
makes use of the special characters).

You can get them for free at: https://github.com/Lokaltog/powerline-fonts/tree/master/DejaVuSansMono

### Windows

-   use 64-bit Vim from: https://tuxproject.de/projects/vim/ or https://bitbucket.org/Haroogan/vim-for-windows
-   use `~/vimfiles` instead of `~/.vim`
-   create rather a hard link (without the `-s` flag) instead
-   make sure `git.exe` is in your `PATH`
-   set enviroment variable `PERLDIR` to the location of your `perl.exe` and `ack-grep` script file (download it from http://betterthangrep.com/ack-standalone)

## Custom commands

This config contains a couple of very useful commands:

| Command      | Description                                             |
| ------------ | ------------------------------------------------------- |
| `<leader>W`  | Strips all trailing whitespace in the current file.     |
| `<leader>v`  | Reselects the text that was just pasted.                |
| `<Leader>r`  | Forces vim screen redraw.                               |
| `<Leader>m`  | Opens _Buf Explorer_ plugin window.                     |
| `<Leader>cd` | Changes the current directory to the file being edited. |
| `<Leader>l`  | Toggles _list_ display                                  |
| `<Leader>w`  | Toggles _wrap_ display                                  |
| `<Leader>t`  | Opens new tab                                           |
| `<Leader>gd` | Fugitive's git diff                                     |
| `<Leader>gb` | Fugitive's git blame                                    |
| `<Leader>gs` | Fugitive's git status                                   |
| `<Leader>dt` | `:diffthis`                                             |
| `<Leader>do` | `:diffoff`                                              |
| `<Leader>du` | `:diffupdate`                                           |
| `<C-S-Del>`  | Deletes the current file                                |
| `<F12>`      | Toggle Tagbar                                           |
| `<C-F12>`    | Regenerate tags                                         |
| `<F4>`       | Toggle paste mode                                       |
| `Y`          | `y$`                                                    |
| `-`          | Displays the directory listing in the current buffer    |
