""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
"" Keybindings for vim
""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""

" use comma for the leader
let mapleader = "," 

" replace ' with ` and vice-versa
nnoremap ' `
nnoremap ` '

""""""""""""""""""""""""""""""""""""""""
" Window manipulation
""""""""""""""""""""""""""""""""""""""""

" switching between windows
map <leader>h <C-W>h
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>l <C-W>l

" tab manipulation
map <C-tab> :tabnext<CR>
map <C-S-tab> :tabprevious<CR>
map <C-O> :tabe

""""""""""""""""""""""""""""""""""""""""
" Fuzzy finder
""""""""""""""""""""""""""""""""""""""""

map <leader>t :FuzzyFinderTextMate<CR>

""""""""""""""""""""""""""""""""""""""""
" NERD_tree
""""""""""""""""""""""""""""""""""""""""

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

""""""""""""""""""""""""""""""""""""""""
" scratch.vim
""""""""""""""""""""""""""""""""""""""""

map <leader>s :call ToggleScratch()<CR>
