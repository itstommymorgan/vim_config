"" Colorscheme stuff
" Enable syntax highlighting
syntax enable
" Use a dark background, because that's what cool people do, I'm told
set background=dark
" Use desert, because it plays nicely with my console theme.
colorscheme solarized

"" Status bar stuff
" Always display a status line.
set laststatus=2
" Always display line numbers
set number
" Display coordinates in the status bar
set ruler
" Display unfinished commands in the status bar
set showcmd
" Display the current file mode in the status bar
set showmode

"" Other stuff
" Show matching bracket/etc.
set showmatch
" Show filename in title bar
set title

" Highlight trailing whitespace on non-empty lines, but not in insert mode.
highlight ExtraWhitespace ctermbg=red guibg=Brown
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\S\zs\s\+$/
au InsertEnter * match ExtraWhitespace /\S\zs\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\S\zs\s\+$/


set encoding=utf-8 " Necessary to show unicode glyphs
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
