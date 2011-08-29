" Use ; for <Leader>. (<Leader> is used to start most non-basic keybindings
" in this configuration; I prefer to use ; for <Leader> since it's right on 
" the home row, but change it as you prefer and all the keybindings will be
" updated appropriately.
let mapleader = ";"

"""" Pathogen include.
" Pathogen automatically includes all plugins installed to the .vim/bundle
" folder.
call pathogen#infect()

""" Custom Configs include.
" All custom config settings are stored in the .vim/config folder to
" differentiate them from 3rd-party libraries.
runtime! config/**/*
