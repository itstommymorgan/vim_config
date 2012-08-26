# VIM\_CONFIG #

My vim configurations. Peruse, copy, or modify at your leisure.

## Management ##

This repo is compatible with (Homesick)[https://github.com/technicalpickles/homesick],
which is a method I recommend for managing your dotfiles.

Vim plugins are managed using (Pathogen)[https://github.com/tpope/vim-pathogen/].
I actually prefer (Vundle)[https://github.com/gmarik/vundle] to Pathogen, but
there are some naming conflicts between Vundle and the Bundler plugin over the
command `:Bundle`, so I had to start using Pathogen again. Where possible,
plugins are included as git submodules.

## Structure ##

#### pathogen\_install ####

In the root of this repository is a "pathogen\_install" script. This script is
pretty dumb and is mostly there to save me some typing - it takes commands like:    
`./pathogen_install tpope vim-rails`    
and creates a git submodule, assuming the arguments are the username and
repository name on github.

#### .vim/bundle/ ####

As is standard with pathogen, all plugins are loaded from this directory. With
the rare exception of a plugin or two that isn't available in a git repository,
these are all handled as git submodules.

#### .vim/config/ ####

All of my custom config files are in this directory. Any .vim file in
.vim/config/ is automatically loaded in after all of pathogen's bundles. Some
files cover general settings (display, filetypes, general\_settings, etc.),
while others affect specific plugins (buffergator, ctrlp, rails, etc.).

## General Settings/Configurations ##

Just some notes, you can browse the config files for more details:

- Use the dark solarized colorscheme. 
- Prefer 2 spaces for indentation.
- Use ';' for the map leader key. Where applicable, define keybindings for
  commonly used functions that start with the map leader (e.g. `;w` writes the
  current buffer, etc.)
- Allow for use of the mouse (I don't use it often, but it's nice to have the
  option sometimes, especially if I'm bouncing back and forth between various
  apps).
- Provide some handy keybindings and autocommands for navigating/maintaining
  tags files.
- Store all temp files in some other directory, instead of co-locating them with
  the files they're storing information on.
- Text objects, text objects, text objects. Easily my favorite part of vim, so I
  try to add as many as possible.

## Plugins ##

#### ack.vim ####

Provides an interface for ack searching inside vim. :help ack for more info.

#### AnsiEsc.vim ####

A script that processes and hides Ansi Escape sequences in vim buffers. :help
AnsiEsc for more information.

#### argtextobj.vim ####

Adds a text object (a) for arguments (like, arguments in a function).

#### ctrlp.vim ####

ctrl-p adds Command-T type functionality to vim - fuzzy file finding. :help
ctrlp for more info.

#### dirsettings.vim ####

dirsettings.vim checks for a .vimdir file somewhere up the folder hierarchy from
the current buffer every time you load a new buffer - if it exists, it processes
it. Think of it as adding folder-specific vim settings.

#### gist-vim ####

Gives you integration with the Github "gist" service from within vim. :help gist
for more info.

#### gitv ####

gitv gives you a gitk-like view into your repository, using vim. :help gitv for
info.

#### gundo.vim ####

Gundo provides a graphical look at the undo tree and allows you to utilize it to
undo a specific change (or whatever). This is a really sweet idea and I don't
know that I've ever used this plugin in real work, but I can probably think of
several instances where I *should* have. :help gundo for more info.

#### IndexedSearch ####

Indexes all search results and provides a "Search Result # of ###" prompt in the
status line so that you know where you are relative to your other search results
while searching.

#### nerdtree ####

nerdtree is a wonderful "project drawer" that allows you to view and navigate
the file structure under your current working directory. :help nerdtree for more
info.

#### numbers.vim ####

This plugin alternates between absolute line numbering (when you're in insert
mode) and relative line numbering (when you're in normal mode) automatically, as
each line numbering method has uses in different situations. :help numbers for
info.

#### RubyTextObjects ####

Adds a text object (r) for selecting blocks of ruby code.

#### SearchComplete ####

Allows for tab-completion of words while searching in vim.

#### splitjoin.vim ####

Functionality for splitting and combining lines in some programming languages
(like if statements in ruby, which can be presented in one line or in 3+). :help
splitjoin for info.

#### supertab ####

Fancy tab completion while in insert mode. :help supertab for more info.

#### syntastic ####

Syntastic is an automatic syntax checker that will put markers on any lines with
invalid syntax (or with questionable syntax, in which case it will get flagged
as a warning). My customizations for this plugin are in
.vim/config/syntastic.vim.

#### textobj-user ####

A helper library for defining text objects, used by several of the text object
plugins I use.

#### tomdoc.vim ####

Syntax files for tomdoc comments (in both Ruby and Coffeescript).

#### vim-buffergator ####

A nice buffer explorer.

#### vim-bundler ####

This plugin gives you an interface to some Bundler commands from within vim -
the real reason I use it, though, is because it adds the paths of all of your
gems to vim's built-in tag searching. If you generate tags for all of your gems
(using, say, the gem-ctags gem) you can jump to them using vim's tag navigation.

#### vim-coffee-script ####

Syntax files for coffee-script.

#### vim-colors-solarized ####

The Solarized color scheme, which I prefer to use.

#### vim-easymotion ####

Provides some nice functionality for performing motions without having to count
words/characters/whatever.

#### vim-endwise ####

Automatically adds "ends" (or "endfunctions," what have you) where they are
appropriate in languages like Ruby and VimL.

#### vim-fugitive ####

A *very* nice library for interacting with git repositories from within vim.
:help fugitive for more info. My customizations (some of which are
vimux-dependent) are in .vim/config/fugitive.vim.

#### vim-indentobject ####

Adds a text object (i) for indented blocks of code.

#### vim-powerline ####

Adds super-fancy status line stuff. Highly recommended.

#### vim-rails ####

Adds some functionality for working with rails projects. :help rails for
details.

#### vim-ruby-refactoring ####

Adds some handy commands for refactoring ruby code. :help rubyrefactoring for
details.

#### vim-rvm ####

Provides some interaction with rvm from within vim.

#### vim-smartinput ####

Auto-completes paired punctuation for you in an intelligent way (parentheses,
quotes, etc.).

#### vim-surround ####

Provides very handy functionality for manipulating "surrounding" punctuation
(like quotes, parentheses, brackets, XML tags...). :help surround for details.

#### vim-textobj-rubysymbol ####

Adds a text object (:) for manipulating ruby symbols.

#### vim-unimpaired ####

Adds several handy mappings for the [ and ] keys. :help unimpaired for more
info.

#### vimux ####

Vimux allows for integration between Vim and tmux. If you don't know what tmux
is, you probably don't need this. If you do know what tmux is, this might just
blow your mind. I have customizations in .vim/config/vimux.vim.

#### webapi-vim ####

A helper library for working with web APIs from within vim - necessary for the
gist plugin.

#### YankRing.vim ####

YankRing emulates the Emacs kill ring - it keeps a history of everything you've
yanked recently and allows you to cycle through them with the <C-p> command.
Look at :help yankring for more details.
