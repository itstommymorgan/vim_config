""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
"" Plugin-specific configurations
""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""
" GetLatestVimScripts
"""""""""""""""""""""""""""""""""""""""""

" allow automatic script installation
let g:GetLatestVimScripts_allowautoinstall=1

"""""""""""""""""""""""""""""""""""""""""
" fuzzyfinder/fuzzyfinder-textmate
"""""""""""""""""""""""""""""""""""""""""

let g:fuzzy_ignore = "*.class;*.zip;*.tar.gz;*.tar.bz2;*.tgz;*.jar;*.war"
let g:fuzzy_matching_limit = 70

""""""""""""""""""""""""""""""""""""""""
" scratch.vim
""""""""""""""""""""""""""""""""""""""""
function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction
