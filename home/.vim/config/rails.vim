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

"<Leader>rs runs/restarts the Rails server.
map <Leader>rs :Rserver!<CR>

"<Leader>ri runs the migration inversion command.
" Only useful in migrations, it uses the code in self.up (or self.down if self.up is empty)
" to try to generate the self.down (or self.up, as above) step of the migration.
map <Leader>ri :Rinvert<CR>
