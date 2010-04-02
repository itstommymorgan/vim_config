# VIM\_CONFIG #

## INTRODUCTION ##

This is a vim configuration created by [duwanis](http://www.duwanis.com
"Duwanis.com"). It includes a few niceties for Ruby/Rails development, as well
as a few MacVim/Gui specific options -  but is mostly composed of general tools
to improve the Vim editing experience. The one exception is that this
configuration necessitates a \*nix system (Mac OS X, Linux, etc.) in order to
work properly. But you're probably on \*nix anyway if you want to use Vim, so
that's probably not a big deal.

## NEWBIE-FRIENDLY ##

This config is written to be newbie-friendly - basically, when I introduce
someone to Vim, I want to be able to say "go through the vim tutorial, then copy
my config, read the README, and you'll be good to go." So I've tried to be
explicit here, but you shouldn't expect to pick this config up and run with it
if you've never used Vim before - go through the vim tutorial (`:help vimtutor`)
   first, at least. :)

## INSTALLATION ##

Though you'll probably want to just examine this vim config to see what I've used, if you're TOTALLY new to vim, you might want to install it and try it out yourself. That's cool. Here's how:

1. Fork this repository (so you have your own copy for when you want to make changes).
2. Install the homesick gem (this makes it really easy): `sudo gem install homesick`
3. Install your copy of the vim_config repository using homesick: `homesick clone your_github_username/vim_config` (assuming you cloned it on github)
4. Symlink it using homesick: `homesick symlink duwanis/vim_config`
5. Done.

## FEATURES ##

Currently, this vim configuration ships with the following plugins:

* [BufExplorer](http://www.vim.org/scripts/script.php?script_id=42 "BufExplorer at
  vim.org")
* [BufOnly](http://github.com/duff/vim-bufonly "BufOnly at github")
* [Command-T](http://www.vim.org/scripts/script.php?script_id=3025 "Command-T at
  vim.org")
* [Endwise](http://github.com/tpope/vim-endwise "vim-endwise at github")
* [Fugitive](http://github.com/tpope/vim-fugitive "vim-fugitive at github")
* [Gist.vim](http://www.vim.org/scripts/script.php?script_id=2423 "gist.vim at
  vim.org")
* [NERDCommenter](http://github.com/scrooloose/nerdcommenter "nerdcommenter at
  github")
* [NERDTree](http://github.com/scrooloose/nerdtree "nerdtree at github")
* [Rails.vim](http://github.com/tpope/vim-rails "vim-rails at github")
* [Space.vim](http://github.com/spiiph/vim-space "vim-space at github")
* [SuperTab Continued](http://www.vim.org/scripts/script.php?script_id=1643
  "SuperTab Continued at vim.org")
* [Surround.vim](http://github.com/tpope/vim-surround "vim-surround at github")
* [Syntastic](http://github.com/scrooloose/syntastic "syntastic at github")
* [VimShell](http://github.com/Shougo/vimshell "vimshell at github")
* [YankRing](http://www.vim.org/scripts/script.php?script_id=1234 "yankring at
  vim.org")

It also contains a few special syntax files:

* Haml/Sass
* Markdown

You can follow the links above to see the original source of each included
plugin, but I've also described them later in this document.

Where possible, each plugin is pulled in as a git submodule, so you can stay
up-to-date on the latest developments. Sometimes this isn't possible, though, so
be sure to check vim.org for the latest versions of plugins.

## STRUCTURE ##

All plugins, syntax files, etc. are stored in the 'usual' place. There are three
'custom' folders, though, that you should be aware of.

* external - the external folder is where all the git-submodules are stored, for
  plugins that are kept on github.
* config - this is where all the custom config files are kept. If you look in
  the vimrc file, you'll see where everything in this folder is loaded
  recursively (even subfolders, if you're obsessive about organizing your config
  settings).
* config/private - this folder is included in .gitignore in case you have some
  personal stuff that you don't want to share (for example, if you want to blog
  using vim, but you don't want to keep your username and password in a git
  repository somewhere :D).

## GENERAL SETTINGS ##

* in Vim, you can define a mapleader key, which you can then use for
  keybindings. I personally prefer to use the semicolon (';') for the mapleader,
  since it's right there on the home row. If you'd like to change it to
  something else (it defaults to '\', and I know several people who prefer the
  comma (',')), you can find that setting in the vimrc file. For the rest of
  this README I'll use <Leader> to indicate a keybinding that makes use of the
  mapleader - e.g. `<Leader>t` means hit <Leader> (the semicolon, unless you've
  changed it) and then the `t` key.
* Vim's default navigation keys - `h`,`j`,`k`, and `l`, can be used to navigate
  between windows if preceded by Ctrl-W. I do this often enough (and hate
  hitting Ctrl enough) that I've created bindings to do this with the mapleader:
  `<Leader>h`,`<Leader>j`,`<Leader>k`, and `<Leader>l`.
* In a similar fashion, I've created bindings for `:w!` and `:q!` : `<Leader>w`
  and `<Leader>q`.
* Every once in a while I open a file that I don't have write access to (a file
  that Root owns, for example), make some changes, and go to save only to find
  out that I don't have the appropriate permissions. Thanks to
  `vim/config/sudoW`, you can run `:SudoW` to write to the file with sudo
  (assuming you're lucky enough to be in the sudoers file on whatever machine
  you're using, anyway ;)).
* Tab-completion is enabled on the command-line (`:...`), the settings for this
  are found in `vim/config/completion.vim`.
* General display settings (color theme, statusbar, etc.) can be found in
  `vim/config/display.vim`.
* General editing settings (indentation settings, etc.) can be found in
  `vim/config/editing.vim`.).
* GUI-specific settings are located in `vim/config/gui.vim`.
* Search-related settings (incremental search, highlighting of search terms, and
  the like) are found in `vim/config/search.vim`.
* Temporary files are kept in one central location so that they don't clutter
  your project folders - these settings can be found in
  `vim/config/tempfiles.vim`.

## PLUGINS ##

### BufExplorer ###

BufExplorer is a quick way to switch around between windows. You can run `:help
bufexplorer` to see the full information, or just make use of the `<Leader>be`
keybinding to bring up the BufExplorer window while you've got a few buffers
open to see it in action.

BufExplorer is configured in `vim/config/bufexplorer.vim`

### BufOnly ###

BufOnly is a simple plugin that closes all buffers but the currently open one.
Useful for when you've got a bunch of buffers open that aren't pertinent any
more (e.g. you're switching to a different project now, etc.). I've mapped the
BufOnly command to the `<Leader>bo` keychain.

### Command-T ###

In the Mac OS X application TextMate, you can use Cmd-t to do a 'fuzzy' search
for files in your current working directory. Command-T is a plugin that duplicates
   this functionality - using <Leader>t by default. Just start typing and you'll see it in
   action. The config settings I've made are in `vim\config\commandt.vim`.

### Endwise ###

Endwise attempts to intelligently insert 'end' in Ruby/VimL. It's likely not
useful if you're working with other languages.

### Fugitive ###

Fugitive is an awesome git wrapper for Vim. When you're working in a git
repository, the following keybindings are available for you:

* `<Leader>gs` - bring up Fugitive's GitStatus window.
* `<Leader>gc` - bring up a window for committing the current changes to git.
* `<Leader>gp` - push your changes to origin master.

I also added a couple of git-svn keychains:

* `<Leader>gnd` - git svn dcommit (push your git revisions to subversion)
* `<Leader>gnr` - git svn rebase (pull the latest from subversion and integrate
  it with your local changes)

`:help fugitive` will let you browse the full documentation for fugitive.

You can also check the configuration changes I made in
`vim/config/fugitive.vim`.

### Gist.vim ###

Gist.vim is a simple plugin for integrating with Github's code-sharing service,
[Gist](http://gist.github.com). `:Gist` to post the current buffer to a new gist,
`:Gist -p` posts a new private one, etc., etc. - check the plugin's vim.org page
for more detailed instructions.

### NERDCommenter ###

NERDCommenter is a nice plugin that allows you to comment/uncomment lines of
code quickly and easily. I've set up a keybinding for it so that `<Leader>c`
will toggle the comment status ofthe current line of code (that is, comment it
if it's not already commented, or uncomment it if it is already commented).
   This also works with line-motion commands - for example, `3<Leader>c` will
   comment the next 3 lines of code, `G<Leader>c` will comment every line until
   the end of the file, etc. You can run `:help NERDCommenter` to see the help
   info, and check out the config changes I've made in
   `vim/config/nerdcommenter.vim`.

### NERDTree ###

NERDTree is a file-navigation buffer that works like the 'drawer' in other
editors. It gives you quick and easy access to the file tree for your current
working directory, a way to bookmark directories so that you can access them
later, and lots of other nice functionality. `<Leader>d` is configured to toggle
the 'drawer' buffer for you. You'll also want to check out the help - `:help
NERDTree`, or simply press `?` while you're in the NERDTree buffer to see the
list of keyboard shortcuts you can use. The configuration for NERDTree is
present in `vim/config/nerdtree.vim`.

### Rails.vim ###

Rails.vim provides a lot of nice functionality for working with Rails
applications. There's a lot of really cool functionality that would take a while
to explain - if you do any rails work, you should run `:help rails-introduction`
and read up on everything that it offers.

I've made a couple of config changes to rails.vim (mostly changing the automatic
2-space setting that it uses for indentation, since I'm required to use 3 spaces
at work), which can be found in `vim/config/rails.vim`.

### Space.vim ###

Space.vim allows you to use the <Space> key as a repeat key for some complex
motion commands (most notably for me, searching - I can search for something and
then hit space to move forward and shift-space to move backwards through the
results). Run `:help space-intro` to read up on it.

### SuperTab Cont. ###

This plugin gives you tab-completion in insert mode, which is pretty awesome.
It can be a lot more complicated than that - run `:help supertab` to go down the
rabbit-hole if you'd like.

### Surround.vim ###

Surround.vim allows you to do fancy things with surrounding
characters/strings... it's really useful if you're working in a tag-based
language like HTML or XML. I could describe it more fully here, but the help
file has a more than sufficient explanation and tutorial: `:help surround`.

### Syntastic ###

Syntastic provides syntax-checking for you when you load/write to a buffer. It
has syntax checkers for several popular programming languages/markup languages
(look in `vim/syntax_checkers/` for the full list), and will automatically flag
any errors/warnings it finds. You can check the helpfile for it at `:help
syntastic`, and see the configuration settings I use in
`vim/config/syntastic.vim`.

### VimShell ###

VimShell gives you a shell in Vim... sort of. :) It's not a native shell, by any
means, but it's still sort of useful.

You can use `<Leader>T` to switch to/start a VimShell buffer. The configuration
for VimShell can be found in `vim/config/vimshell.vim`.

### YankRing ###

YankRing adds the equivalent of Emacs' "Kill Ring" to Vim. It wraps Vim's
default yank/delete mechanisms and allows you to easily work with the last `n`
items that you've put in Vim's registries - it's sort of a clipboard manager for
Vim. 

`:help yankring` will give you the full rundown as well as a tutorial.

You can also view the configuration I've set up by examining
`vim/config/yankring.vim`.
