""""""""""""""""""""""""""""""""""""""""
"" GUI-specific settings
""""""""""""""""""""""""""""""""""""""""

" only execute the contents of this file if the GUI is in use.
if has("gui_running")
   " If you're using MacVim, you'll want to use the experimental renderer for
   " this
   " Set to 5, because the solarized colorscheme uses blue instead of black
   set transp=5
  
   "" gui options
   " a - Autoselect
   " c - Use console dialogs instead of popup dialogs for simple choices.
   " 
   " more interesting, what is absent: no menu, no toolbar, no scrollbars.
   set guioptions=ac

   set lines=60
   set columns=180
endif
