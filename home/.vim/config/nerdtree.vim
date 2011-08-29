""" Configuration
"""""""""""""""""

" Every time we change directories in NERDTree, use the
" new directory as the current working directory for Vim.
let NERDTreeChDirMode=2

" Show hidden files by default.
let NERDTreeShowHidden=1

" Show line numbers in the NERDTree window.
let NERDTreeShowLineNumbers=1

" Use arrows rather than pipes and +/~ chars.
let NERDTreeDirArrows=1


""" Keybindings
"""""""""""""""

" Use <Leader>d to toggle display of the NERDTree window
map <Leader>d :NERDTreeToggle<CR>
