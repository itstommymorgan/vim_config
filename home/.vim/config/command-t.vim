""" Configuration
"""""""""""""""""

" Don't let Command-T take up the whole screen; limit it to displaying
" at most 20 results at a time.
let g:CommandTMaxHeight=20

" Always include dot-files in search results.
let g:CommandTAlwaysShowDotFiles=1

" Put the match window at the top, not at the bottom of the screen
let g:CommandTMatchWindowAtTop=1

""" Keybindings
"""""""""""""""

" Use <Leader>xt to clear the Command-T cache.
" This will cause Command-T to update itself and pick up any new files.
map <Leader>xt :CommandTFlush<CR>
