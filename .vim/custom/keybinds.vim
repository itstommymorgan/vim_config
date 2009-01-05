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
" Buffer manipulation
""""""""""""""""""""""""""""""""""""""""

" save/close current buffer
map <leader>w :w<CR>
map <leader>c :bdelete<CR>

" next/previous buffer
map <leader>n :bnext<CR>
map <leader>p :bprevious<CR>

" show buffer list
map <leader>b :buffers<CR>

""""""""""""""""""""""""""""""""""""""""
" Window manipulation
""""""""""""""""""""""""""""""""""""""""

" close current window
map <leader>q :q!<CR>

map <leader>h <C-W>h
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>l <C-W>l

""""""""""""""""""""""""""""""""""""""""
" ack.vim
""""""""""""""""""""""""""""""""""""""""

map <leader>f :Ack 

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

""""""""""""""""""""""""""""""""""""""""
" Taglist
""""""""""""""""""""""""""""""""""""""""

map <leader>g :TlistToggle<CR>
