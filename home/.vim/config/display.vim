" This file contains settings for how the vim display is handled.
" This is *not* where gui-mode specific settings are held. That's in gui.vim.
" These settings apply to both gui mode and console mode vim.

set colorcolumn=80 " put a marker at the 80 column mark
                   " Yes, 80 chars is kind of arbitrary in the modern age...
                   " but it's a good rule of thumb

set laststatus=2   " always display a status line
set ruler          " display coordinates in status bar
set showcmd        " display unfinished commands
set showmatch      " show matching bracket (briefly jump)
set showmode       " display the current mode in the status bar
set title          " show file in titlebar

" absolute line numbers in insert mode, relative otherwise for easy movement
au InsertEnter * :set nu
au InsertLeave * :set rnu
