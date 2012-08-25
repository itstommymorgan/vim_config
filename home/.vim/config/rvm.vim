""" Configuration
"""""""""""""""""

" Make sure to load the apropriate rvm instance every time
" a buffer is loaded.
" Use silent! so that it doesn't throw an error if Rvm isn't appropriate.
autocmd BufEnter * silent! Rvm
