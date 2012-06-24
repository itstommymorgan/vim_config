" Don't try to play nicely with vi
set nocompatible

" Allow buffers to be hidden, even if they're not saved.
set hidden

" Save the last 100 commands and search terms in history
set history=100

"" Short message settings:
" f - use "(3 of 5)" instead of "(file 3 of 5)"
" i - use "[noeol]" instead of "[Incomplete last line]"
" l - use "999L, 888C" instead of "999 lines, 888 characters"
" m - use "[+]" instead of "[Modified]"
" n - use "[New]" instead of "[New File]"
" r - use "[RO]" instead of "[readonly]"
" x - use "[dos]" instead of "[dos format]", "[unix]" instead of "[unix
" format]", and "[mac]" instead of "[mac format]"
" t - truncate file message at the start if it is too long to fit on the
" command-line, "<" will appear in the left most column.
" T - trunctate other messages in the middle if they are too long to fit on
" the command line. "..." will appear in the middle.
" I - don't give the intro message when starting Vim.
set shortmess=filmnrxtTI

" Stop ringing at me.
set noerrorbells

" Filetype settings and syntax should be enabled.
filetype plugin indent on
syntax on

" Enable the mouse in the event it's handy
set mouse=a
