"""""""""""""""""""""""""""""""""""""""""""""""""""
"" loads display-related option (colorscheme, etc.)
"""""""""""""""""""""""""""""""""""""""""""""""""""

" use the solarized colorscheme
set background=dark
colorscheme solarized

set laststatus=2   " always display a status line
set number         " show line numbers
set ruler          " display coordinates in status bar
set showcmd        " display unfinished commands
set showmatch      " show matching bracket (briefly jump)
set showmode       " display the current mode in the status bar
set title          " show file in titlebar
set scrolloff=10   " keep 10 lines of text above/below the cursor when near the top/bottom of buffer

" highlight the current line in current window; may slow down redrawing for long lines or large files
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" highlight the current column in current window; may slow down redrawing for long lines or large files
autocmd WinEnter * setlocal cursorcolumn
autocmd WinLeave * setlocal nocursorcolumn

" status bar
set statusline+=%f\                                           " filename
set statusline+=[%{strlen(&ft)?&ft:'none'}]                   " filetype
set statusline+=%h%1*%m%r%w%0*                                " flags
set statusline+=%=                                            " right align
set statusline+=%{fugitive#statusline()}                      " git status
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} " rvm status
set statusline+=(%l,%c%V)\ %<%P                               " offset
