" Use <Leader><Leader> as a shortcut to enter commands (faster and less strain
"  than hitting Shift-: in most cases).
nnoremap <Leader><Leader> :

""" Writing Buffers / Quitting
""""""""""""""""""""""""""""""
" Keybinds for quickly writing files and/or closing windows

" <Leader>w writes the current buffer to disk.
map <Leader>w :w!<CR>

" <Leader>W writes the current buffer to disk and quits the window.
map <Leader>W :wq!<CR>

" <Leader>q quits the current window
map <Leader>q :q!<CR>

" <Leader>Q quits all windows.
map <Leader>Q :qa!<CR>

""" Navigation
""""""""""""""
" Keybinds for moving about in vim buffers/windows.

" <Leader>h moves to the window to the left of the current window,
" <Leader>j moves to the window below the current window,
" <Leader>k moves to the window above the current window, and
" <Leader>l moves to the window to the right of the current window.
map <Leader>h <C-W>h
map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>l <C-W>l

" Use <TAB> to navigate to the top-left most window.
" See :help C-W_C-W for info on why this mapping does what it does.
""" Why is this useful?
""" Because if you're using NERDTree the way I have it configured,
""" it will always be the top-left most window when it's toggled.
""" So in practice, this binds <TAB> to navigate to the NERDTree window.
map <TAB> 1<C-W><C-W>

" Switch back to the last buffer you were looking at.
map <Leader>b <C-^>

""" Other
"""""""""

" Make Y behave like D, A, I, etc.
map Y y$

" Make Q repeat the last recorded macro
map Q @@

" Make H/L work for jumping to the start/end of lines
noremap H ^
noremap L $

" ;i will toggle display of hidden characters
noremap <Leader>i :set list!<CR>

" Hit escape twice to clear search results.
noremap <silent><Esc><Esc> :nohls<CR>

" Keep search results in the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz
