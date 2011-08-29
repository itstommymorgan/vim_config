"""" Pathogen include.
" Pathogen automatically includes all plugins installed to the .vim/bundle
" folder.
call pathogen#infect()

""" Custom Configs include.
" All custom config settings are stored in the .vim/config folder to
" differentiate them from 3rd-party libraries.
runtime! config/**/*
