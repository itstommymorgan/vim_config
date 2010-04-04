""""""""""""""""""""""""""""""""""""""""
"" GUI-specific settings
""""""""""""""""""""""""""""""""""""""""

" only execute the contents of this file if the GUI is in use.
if has("gui_running")
   set transp=8
  
   "" gui options
   " a - Autoselect
   " c - Use console dialogs instead of popup dialogs for simple choices.
   " 
   " more interesting, what is absent: no menu, no toolbar, no scrollbars.
   set guioptions=ac

   set lines=60
   set columns=180
endif
