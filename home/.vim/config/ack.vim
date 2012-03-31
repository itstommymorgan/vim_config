""" Keybindings
"""""""""""""""

" Use <Leader>a to prompt you for an Ack search
" Automatically include quotes, because they never hurt and forgetting them is a
" pain.
nnoremap <Leader>a :Ack!<SPACE>"<LEFT>"

" Use <Leader>A to ack for the word under the cursor
nnoremap <leader>A *<C-O>:AckFromSearch!<CR>
