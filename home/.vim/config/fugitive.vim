""" Keybindings
"""""""""""""""
" We'll use <Leader>g as the starting for each of the git keybindings.

" Display the git status.
map <Leader>gs :Gstatus<CR>

" Display the git log list
map <Leader>gl :Glog<CR>

" Display the diff
map <Leader>gd :Gdiff<CR>

" Run git blame
map <Leader>gb :Gblame<CR>

" git-svn bindings
"" Use <Leader>gn as the starting point for each of the git-svn keybindings.

" Run git svn dcommit
map <Leader>gnc :Git svn dcommit<CR>

" Run git svn rebase
map <Leader>gnr :Git svn rebase<CR>
