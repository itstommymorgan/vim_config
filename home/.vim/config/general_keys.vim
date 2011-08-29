" Use ; for <Leader>. (<Leader> is used to start most non-basic keybindings
"   in this configuration; I prefer to use ; for <Leader> since it's right on th"   home row, but change it as you prefer and all the keybindings will be
"   updated appropriately.
let mapleader = ";"

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
