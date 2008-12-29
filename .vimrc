""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set history=1000 " remember 1000 lines of history
set nocompatible " get out of vi-compatible mode

filetype on " automatically detect filetype
filetype plugin on " load filetype plugins
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""
" Use ack for grep
"""""""""""""""""""""""""""""""""""""""""
set grepprg=ack
set grepformat=%f:%l:%m

" better matching through science
runtime macros/matchit.vim 

" text editing settings
source $HOME/.vim/custom/editing.vim

" interface settings
source $HOME/.vim/custom/interface.vim

" plugin-specific settings or modifications
source $HOME/.vim/custom/plugins.vim

" keybindings
source $HOME/.vim/custom/keybinds.vim
