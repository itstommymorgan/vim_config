""" Configuration
"""""""""""""""""

" Use <Leader>r as the starting point for all rails-related
" keybindings.

"<Leader>ra and <Leader>rr - open the alternate and related files, relatively
map <Leader>ra :A<CR>
map <Leader>rr :R<CR>

"<Leader>rc runs script/console.
map <Leader>rc :Rscript<CR>

"<Leader>rg prompts the user to run script/generate.
map <Leader>rg :Rgenerate<SPACE>
