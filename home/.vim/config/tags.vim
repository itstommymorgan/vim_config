map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

map <Leader>s g]
map <Leader>t g<C-]>
map <Leader>T <C-t>

" Update tag files for ruby files when we save them
autocmd BufWritePost *.rb call writefile(split(system("sort -u <(touch tags && grep -v " . expand('%:%') . " tags) <(ctags --language-force=ruby -u -f - " . shellescape(expand('%:%')) . " | grep " . expand('%:r') . ")"),"\n"),"tags")
