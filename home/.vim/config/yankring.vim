""""""""""""""""""""""""""""""""""""""""
"" YankRing configuration
""""""""""""""""""""""""""""""""""""""""

" skip all single-letter deletes (x)
let g:yankring_min_element_length = 2

" save last 50 items in history, only show last 50 in yankring window
let g:yankring_max_history = 50
let g:yankring_max_display = 50

" save yankring entries across vim instances
let g:yankring_persist = 1
let g:yankring_share_between_instances = 1

" don't save duplicates
let g:yankring_ignore_duplicate = 1

" use a separate vertical split window that auto closes and is 30 chars wide on
" the right side
let g:yankring_window_use_separate = 1
let g:yankring_window_use_horiz = 0
let g:yankring_window_auto_close = 1
let g:yankring_window_width = 30
let g:yankring_window_use_right = 1

" pressing <space> will increase the size of the window by 15 columns
let g:yankring_window_increment = 15

" have yankring manage Vim's numbered registers ("0-"9)
let g:yankring_manage_numbered_reg = 1

" keep the history file in the $HOME/.vim folder rather than $HOME
let g:yankring_history_dir = '$HOME/.vim'

" yankring keeps an eye on the clipboard
let g:yankring_clipboard_monitor = 1

" if something changes the default register without going through yankring, use
" the default register value rather than the top item in yankring's history
let g:yankring_paste_check_default_buffer = 1

" Keybindings

" use <Leader>y to open the YankRing window
:nnoremap <silent> <Leader>y :YRShow<CR>

