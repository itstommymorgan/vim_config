" go ahead and check files when we open them
let g:syntastic_check_on_open=1

" use fancy symbols for errors and warnings
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" use balloons!
let g:syntastic_enable_balloons = 1

" Automatically check syntax on files, but don't do it for html
"    the syntastic warnings for html are uber-annoying.
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'passive_filetypes': ['html'] }
