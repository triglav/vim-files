# Triglav's Vim files

## Download

Clone the repository and download submodules:

    $ git clone https://github.com/triglav/vim-files.git ~/.vim
    $ cd ~/.vim
    $ git submodule init
    $ git submodule update

Get the most recent version of submodules:

    $ git submodule foreach git checkout master
    $ git submodule foreach git pull

## Installation

Create `.vimrc` link in your home directory:

    $ ln -s ~/.vim/.vimrc ~/.vimrc

Generate Vim doc tags:

    :call pathogen#helptags()

### Override `.vimrc`

If you would like to override some of the default settings, you can create your
own `~/.vimrc` containing following line:

    source ~/.vim/.vimrc


### Fonts

I am using _DejaVu Sans Mono_ fonts on every platform.

You can get them for free at: http://dejavu-fonts.org


### Windows

* use `~/vimfiles` instead of `~/.vim`
* create rather a hard link (without the `-s` flag) instead
* set enviroment variable `GITDIR` to the location of your `git.exe`
* set enviroment variable `PERLDIR` to the location of your `perl.exe` and `ack-grep` script file (download it from http://betterthangrep.com/ack-standalone)

## Custom commands

This config contains a couple of very useful commands:

* `<leader>W` Strips all trailing whitespace in the current file.
* `<leader>v` Reselects the text that was just pasted.
* `<Leader>r` Forces vim screen redraw.
* `<Leader>n` Opens the _NERD Tree_ plugin window.
* `<Leader>m` Opens _Buf Explorer_ plugin window.
* `<Leader>cd` Changes the current directory to the file being edited.
* `<Leader>l` Toggles _list_ display
* `<Leader>t` Opens new tab

