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

### Windows tips

* use `~/vimfiles` instead of `~/.vim`
* create rather a hard link (without the `-s` flag) instead

