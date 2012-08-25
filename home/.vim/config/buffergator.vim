" Toggle the Buffergator window
noremap <leader>B :BuffergatorToggle<CR>

" display on top
let g:buffergator_viewport_split_policy = "T"
" 10 lines high
let g:buffergator_split_size = 10
" sort by most recently used
let g:buffergator_sort_regime = "mru"
" don't set up your crazy default keymappings
let g:buffergator_suppress_keymaps = 1
