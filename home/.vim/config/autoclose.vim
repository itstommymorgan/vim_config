" Define custom settings for the autoclose logic
" We add two new pairs to autoclose (pipes, ||, and the ruby string
" interpolation delimiters, #{}) to the list, and tell it not to worry
" about protecting comments or strings from autoclose functionality.
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}', '|':'|' }
let g:AutoCloseProtectedRegions = ["Character"]

" This is a hack of a workaround put in place by the autoclose
" developer. Some of the bindings break the arrow keys in
" terminal vim (i.e. non-GUI mode); this variable is in place
" to 'work around' the problem.
if !has("gui_running")
   let g:AutoClosePreservDotReg = 0
endif
