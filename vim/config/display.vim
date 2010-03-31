"""""""""""""""""""""""""""""""""""""""""""""""""""
"" loads display-related option (colorscheme, etc.)
"""""""""""""""""""""""""""""""""""""""""""""""""""

" use the 'high-contrast' version of zenburn
let g:zenburn_high_Contrast=1
colorscheme zenburn

set laststatus=2   " always display a status line
set number         " show line numbers
set ruler          " display coordinates in status bar
set showcmd        " display unfinished commands
set showmatch      " show matching bracket (briefly jump)
set showmode       " display the current mode in the status bar
set title          " show file in titlebar

" status bar
" set statusline=\ "
" set statusline+=%f\ " filename
" set statusline+=[
" set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
" set statusline+=]
" set statusline+=%h%1*%m%r%w%0* " flag
" set statusline+=%= " right align
" set statusline+=%~14.(%1,%c%V)\ %<%P " offset
