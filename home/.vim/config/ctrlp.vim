" Options
let g:ctrlp_by_filename = 1 " search by filename, not full path
let g:ctrlp_map = '<Leader>f' " use <Leader>f to open the ctrlp window
let g:ctrlp_working_path_mode = 0 " don't do anything with the working directory.
let g:ctrlp_use_caching = 0 " don't do any caching - I don't have any huge directories.

"" DO NOT set wildignore, as it causes fugitive to go all wonky.
" Wish there was a better fix for this, may investigate later.
" set wildignore+=*/.git/*,*/.svn/*

" Use <Leader>B to open the buffer window if we want to
map <Leader>B :CtrlPBuffer<CR>
