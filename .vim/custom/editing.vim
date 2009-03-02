""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
"" Settings for text-editing
""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""
" Backspace
""""""""""""""""""""""""""""""""""""""""
set backspace=2         " make backspace behave normally
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap too


""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""
set fo=crq	" default format options
" c auto-wrap comments
" r auto inserts the current comment leader
" q allows formatting of comments
set ai " autoindent
set si " smartindent
set tabstop=2	" Tab has 2_spaces equivalent width
set isk+=_,$,@,%,#,- " prevent these chars from being recognized as word separators
set softtabstop=2 " match tabstop
set shiftwidth=2 " Indentation width when using >> and << re-indentation
set expandtab	" expand tabs into spaces

""""""""""""""""""""""""""""""""""""""""
" Save a file with sudo
""""""""""""""""""""""""""""""""""""""""
command! -bar -nargs=0 SudoW   :silent exe "write !sudo tee % >/dev/null"|silent edit!
