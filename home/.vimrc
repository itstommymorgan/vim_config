" Use ; for <Leader>. (<Leader> is used to start most non-basic keybindings
" in this configuration; I prefer to use ; for <Leader> since it's right on
" the home row, but change it as you prefer and all the keybindings will be
" updated appropriately.
let mapleader = ";"

""" Vundle settings.
" Make use of Vundle to handle our packages with five easy steps:
" 1) Set config settings required for Vundle to startup.
set nocompatible
filetype off
" 2) Add Vundle to the runtime path.
set rtp+=~/.vim/bundle/vundle/
" 3) Initialize Vundle.
call vundle#rc()
" 4) Let Vundle manage Vundle.
Bundle 'gmarik/vundle'
" 5) Include all of the bundles that we want to make use of.
" All of these references are to github repositories unless otherwise noted.
Bundle 'mileszs/ack.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'mattn/gist-vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rvm'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'duwanis/tomdoc.vim'
Bundle 'skalnik/vim-vroom'
Bundle 'vim-scripts/ZoomWin'

""" Custom Configs include.
" All custom config settings are stored in the .vim/config folder to
" differentiate them from 3rd-party libraries.
runtime! config/**/*
