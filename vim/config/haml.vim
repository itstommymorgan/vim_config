""""""""""""""""""""""""""""""""""""""""
"" Haml-specific settings.
""""""""""""""""""""""""""""""""""""""""

" 2 spaces.
au BufRead,BufNewFile *     if &ft == 'haml' | setlocal tabstop=2 | setlocal shiftwidth=2 | endif 
