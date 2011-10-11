" Options
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_persistent_input = 0
let g:ctrlp_match_window_reversed = 1

set wildignore+=*/.git/*,*/.svn/*

" Keybindings
" Use <Leader>b for opening the buffers list.
map <Leader>b :CtrlPMRUFiles<CR>

