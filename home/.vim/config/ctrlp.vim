" Options
let g:ctrlp_map = '<Leader>f'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_persistent_input = 0
let g:ctrlp_match_window_reversed = 1

"" DO NOT set wildignore, as it causes fugitive to go all wonky.
" Wish there was a better fix for this, may investigate later.
" set wildignore+=*/.git/*,*/.svn/*

map <Leader>B :CtrlPBuffer<CR>
