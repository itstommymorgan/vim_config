" This file contains settings for how the vim display is handled.
" This is *not* where gui-mode specific settings are held. That's in gui.vim.
" These settings apply to both gui mode and console mode vim.

set laststatus=2   " always display a status line
set number         " show line numbers
set ruler          " display coordinates in status bar
set showcmd        " display unfinished commands
set showmatch      " show matching bracket (briefly jump)
set showmode       " display the current mode in the status bar
set title          " show file in titlebar

" status bar
set statusline+=%f\ " filename
set statusline+=[%{strlen(&ft)?&ft:'none'}] " filetype
set statusline+=%h%1*%m%r%w%0* " flags
set statusline+=%= " right align
set statusline+=%{fugitive#statusline()} " git status
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} " rvm status
set statusline+=(%l,%c%V)\ %<%P " offset
