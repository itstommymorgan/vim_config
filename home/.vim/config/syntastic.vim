""""""""""""""""""""""""""""""""""""""""
"" Syntastic-specific config settings
""""""""""""""""""""""""""""""""""""""""

" use signs to indicate lines with errors
" only if signs are available
if has('signs')
   let g:syntastic_enable_signs = 1
endif

" automatically open the location list when a buffer has errors
let g:syntastic_auto_loc_list=1

" always show warnings
let g:syntastic_quiet_warnings=0
