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

" Switch back to the last buffer you were looking at.
map <Leader>b <C-^>

""" Other
"""""""""

" Use <Leader>v to reload the vim config.
map <Leader>v :so ~/.vimrc<CR>

" Make Y behave like D, A, I, etc.
map Y y$

" Make Q repeat the last recorded macro
map Q @@

" Make H/J/K/L work like super versions of h/j/k/l - J/K go to start/end of
" buffer, and H/L go to start/end of line.
noremap H ^
noremap J <C-f>
noremap K <C-b>
noremap L $

" ;i will toggle display of hidden characters
noremap <Leader>i :set list!<CR>

" Hit escape twice to clear highlights.
noremap <silent><Esc><Esc> :nohls<CR>

" Use <C-space> as an escape alternative
imap <C-@> <C-[>
vmap <C-@> <C-[>
if has("gui")
  imap <C-Space> <C-[>
  vmap <C-Space> <C-[>
endif

" Keep search results in the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz
