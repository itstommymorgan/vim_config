""""""""""""""""""""""""""""""""""""""""
"" Rails.vim settings
""""""""""""""""""""""""""""""""""""""""

" use 3 spaces, like everything else
autocmd User Rails        setlocal shiftwidth=3
autocmd User Rails        setlocal tabstop=3
autocmd User Rails        setlocal softtabstop=3

" except for Haml - use 2 spaces there.
autocmd User Rails.view.haml*         setlocal shiftwidth=2
autocmd User Rails.view.haml*         setlocal tabstop=2
autocmd User Rails.view.haml*         setlocal softtabstop=2

" also be sure we update any Haml files in the layout folder...
autocmd User Rails.view.layout.haml*        setlocal shiftwidth=2
autocmd User Rails.view.layout.haml*        setlocal tabstop=2
autocmd User Rails.view.layout.haml*        setlocal softtabstop=2
