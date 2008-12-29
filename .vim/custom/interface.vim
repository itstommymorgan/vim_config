""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
"" Display settings
""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""
" Color scheme
""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme desert
syntax on

""""""""""""""""""""""""""""""""""""""""
" General UI
""""""""""""""""""""""""""""""""""""""""
set cmdheight=2     " command bar is 2 lines high
                    " blank splitters between windows
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set hidden          " allow hiding unsaved buffers
set incsearch       " search incrementally
set lsp=0           " line spacing
set lz              " don't redraw while running macros (faster)
set mat=5           " display matching brackets for half a second
set noerrorbells    " be quiet
set nohlsearch      " don't highlight searched-for phrases
set novisualbell    " don't blink on bell
set number          " enable line numbering
set report=0        " tell us when anything is changed via:...
set ruler           " always show current position in status bar
set scrolloff=3     " always maintain 3 lines of context around the cursor
set showmatch       " display matching brackets
set shortmess+=I    " short messages
set title           " try to set terminal title
set tw=80           " default text-width is 80 columns
set wildmenu        " allow tab-complete for vim cmomands

""""""""""""""""""""""""""""""""""""""""
" GUI options
""""""""""""""""""""""""""""""""""""""""
set guifont=Bitstream\ Vera\ Sans\ Mono\ 8
" hide the toolbar and menu
set guioptions-=T
set guioptions-=m

""""""""""""""""""""""""""""""""""""""""
" Status line function (stolen from cdmwebs, who in turn stole it from someone
" else)
""""""""""""""""""""""""""""""""""""""""

set ls=2 " Always show status line

if has('statusline')
  " Status line detail:
  " %f file path
  " %y file type between braces (if defined)
  " %([%R%M]%) read-only, modified and modifiable flags between braces
  " %{'!'[&ff=='default_file_format']}
  " shows a '!' if the file format is not the platform default
  " %{'$'[!&list]} shows a '*' if in list mode
  " %{'~'[&pm=='']} shows a '~' if in patchmode
  " (%{synIDattr(synID(line('.'),col('.'),0),'name')})
  " only for debug : display the current syntax item name
  " %= right-align following items
  " #%n buffer number
  " %l/%L,%c%V line number, total number of lines, and column number
  function SetStatusLineStyle()
    if &stl == '' || &stl =~ 'synID'
      let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]}%{'~'[&pm=='']}%=#%n %l/%L,%c%V "
    else
      let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]} (%{synIDattr(synID(line('.'),col('.'),0),'name')})%=#%n %l/%L,%c%V "
    endif
  endfunc
  " Switch between the normal and vim-debug modes in the status line
  nmap _ds :call SetStatusLineStyle()<CR>
  call SetStatusLineStyle()
  " Window title
  if has('title')
    set titlestring=%t%(\ [%R%M]%)
  endif
endif
