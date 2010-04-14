""""""""""""""""""""""""""""""""""""""""
"" command to save a file with sudo privileges
""""""""""""""""""""""""""""""""""""""""

command! -bar -nargs=0 SudoW   :silent exe "write !sudo tee % >/dev/null"|silent edit
