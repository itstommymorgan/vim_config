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

" Git push
map <silent> <Leader>gp :call TMGitPush()<CR>

" Git pull
map <silent> <Leader>gu :call TMGitPull()<CR>

" Gitv
map <Leader>gv :Gitv!<CR> " file mode, probably what I'll use most 
map <Leader>gV :Gitv<CR>  " browser mode, opens in a new tab (bleh)

function! TMGitPush()
  if InTmux()
    call VimuxRunCommand("git push")
  else
    exec ":Git push"
  endif
endfunction

function! TMGitPull()
  if InTmux()
    call VimuxRunCommand("git pull --rebase")
  else
    exec ":Git pull --rebase"
  endif
endfunction
