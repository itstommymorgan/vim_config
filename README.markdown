# VIM\_CONFIG #

## INTRODUCTION ##

This is a vim configuration created by [duwanis](http://www.duwanis.com
"Duwanis.com"). It includes a few niceties for Ruby/Rails development, as well
as a few MacVim/Gui specific options -  but is mostly composed of general tools
to improve the Vim editing experience. The one exception is that this
configuration necessitates a \*nix system (Mac OS X, Linux, etc.) in order to
work properly. But you're probably on \*nix anyway if you want to use Vim, so
that's probably not a big deal.

A couple of the plugins (namely, Command-T and Conque) require Vim to be
compiled with Ruby and/or Python support in order to operate correctly. Be aware
of that if you run into any problems.

## NEWBIE-FRIENDLY ##

This config is written to be newbie-friendly - basically, when I introduce
someone to Vim, I want to be able to say "go through the vim tutorial, then copy
my config, read the README, and you'll be good to go." So I've tried to be
explicit here, but you shouldn't expect to pick this config up and run with it
if you've never used Vim before - go through the vim tutorial (`:help vimtutor`)
first, at least. :)
      
## INSTALLATION ##
      
Though you'll probably want to just examine this vim config to see what
I've used, if you're TOTALLY new to vim, you might want to install it and
try it out yourself. That's cool. Here's how:

1. Fork this repository (so you have your own copy for when you want to
   make changes).
2. Install the homesick gem (this makes it really easy): `sudo gem
   install homesick`
3. Install your copy of the vim\_config repository using homesick:
   `homesick clone your_github_username/vim_config` (assuming you
   cloned it on github)
4. Symlink it using homesick: `homesick symlink
   your_github_username/vim_config`
5. Done.
6. ...unless you want to use command-T, which requires that you build some
   stuff first.
7. `cd ~/.vim/bundle/commandT/ruby/command-t && ruby extconf.rb && make`
   takes care of that, though.
## FEATURES ##

Currently, this vim configuration ships with the following plugins:

* [Ack.vim](http://github.com/mileszs/ack.vim "Ack.vim at github")
* [AsNeeded](http://github.com/vim-scripts/AsNeeded "AsNeeded at github")
* [AutoClose](http://github.com/Townk/vim-autoclose "Autoclose at github")
* [BufExplorer](http://github.com/vim-scripts/bufexplorer.zip "BufExplorer at
  github")
* [BufOnly](http://github.com/duff/vim-bufonly "BufOnly at github")
* [CamelCaseMotion](http://github.com/vim-scripts/camelcasemotion
  "CamelCaseMotion at github")
* [Command-T](http://github.com/wincent/Command-T "Command-T at github")
* [Conque](http://github.com/rson/vim-conque "Conque at github")
* [dbext](http://github.com/vim-scripts/dbext.vim "dbext at github")
* [Endwise](http://github.com/tpope/vim-endwise "vim-endwise at github")
* [Fugitive](http://github.com/tpope/vim-fugitive "vim-fugitive at github")
* [Gist.vim](http://github.com/vim-scripts/Gist.vim "gist.vim at github")
* [NERDCommenter](http://github.com/scrooloose/nerdcommenter "nerdcommenter at
  github")
* [NERDTree](http://github.com/scrooloose/nerdtree "nerdtree at github")
* [Rails.vim](http://github.com/tpope/vim-rails "vim-rails at github")
* [Rake.vim](http://github.com/tpope/vim-rake "vim-rake at github")
* [Repeat.vim](http://github.com/tpope/vim-repeat "repeat at github")
* [Rvm.vim](http://github.com/csexton/rvm.vim "rvm.vim at github")
* [Snipmate.vim](http://github.com/msanders/snipmate.vim "snipmate.vim at
  github")
* [Space.vim](http://github.com/spiiph/vim-space "vim-space at github")
* [Surround.vim](http://github.com/tpope/vim-surround "vim-surround at github")
* [Syntastic](http://github.com/scrooloose/syntastic "syntastic at github")
* [TailMinusF](http://github.com/vim-scripts/TailMinusF "tailminusf at github")
* [VimOutliner](https://github.com/Raimondi/vimoutliner "vimoutliner at github")
* [YankRing](http://github.com/chrismetcalf/vim-yankring "yankring at github")

You can follow the links above to see the original source of each included
plugin, but I've also described them later in this document.

Each plugin is pulled in as a git submodule, so you can stay
up-to-date on the latest developments.

## STRUCTURE ##

This vim config makes use of Tim Pope's pathogen plugin, which allows all other
plugins to be split into their own individual folders rather than jumbled
together in vim's default locations. This means that if you want to copy this
config but don't like a few of the plugins, you can very easily identify what
needs to be removed.

* bundle - this is the special folder pathogen uses to store plugins.
* external - any submodules that aren't kept in bundle will go here. As of right
  now, pathogen is the only thing here.
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
  something else (it defaults to '\\', and I know several people who prefer the
  comma (',')), you can find that setting in the vimrc file. For the rest of
  this README I'll use `<Leader>` to indicate a keybinding that makes use of the
  mapleader - e.g. `<Leader>t` means hit `<Leader>` (the semicolon, unless you've
  changed it) and then the `t` key.
* Vim's default navigation keys - `h`,`j`,`k`, and `l`, can be used to navigate
  between windows if preceded by Ctrl-W. I do this often enough (and hate
  hitting Ctrl enough) that I've created bindings to do this with the mapleader:
  `<Leader>h`,`<Leader>j`,`<Leader>k`, and `<Leader>l`.
* Control-k and Control-j are mapped to move lines up/down.
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
  your project folders. Rather than warning you when you open a file that
  already has a swapfile (e.g. a file that's open in another vim session), vim
  should now quietly let you edit the file, which is much less annoying. These settings can be found in
  `vim/config/tempfiles.vim`.

## PLUGINS ##

### Ack.vim ###

Ack is better than grep. Ack.vim lets you use Ack to search in the current
directory. It then loads the results into Vim's "quickfix" window for easy
browsing. `<Leader>A` (note that's Shift-a) is configured to bring Ack up ready to search in
`.vim/config/ack.vim`.

### AsNeeded ###

AsNeeded allows plugins, bindings, functions, etc. to be loaded on a (surprise!)
as-needed basis. Its biggest advantage is that it reduces the initial load time
for vim - in my case by somewhere around 66%.
If you add any new plugins, you'll want to be sure to run the `:MkAsNeeded`
command so that they get parsed.

### AutoClose ###

Autoclose monitors when you type paired characters (like `"`, `(`, etc.) and
automatically places the closing character for you. e.g. you can type `"` and
autoclose will automatically change it to `"|"` (where the '|' in this case
represents your cursor location). If you don't want to use autoclose in
a certain situation, you can use the `<Leader>a` binding to toggle it.

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

### CamelCaseMotion ###

CamelCaseMotion defines keybindings for motions that work on camel-case words
(and underscore-separated words). e.g., by default, `w` goes to the end of the
word, even if that word is CamelCasedLikeThis. Using CamelCaseMotion, you can
use `,w` to move to the next part of the CamelCasedWord. `:help camelcasemotion`
for more information.

### Command-T ###

In the Mac OS X application TextMate, you can use Cmd-t to do a 'fuzzy' search
for files in your current working directory. Command-T is a plugin that duplicates
   this functionality - using `<Leader>t` by default. Just start typing and you'll see it in
   action. The config settings I've made are in `vim\config\commandt.vim`.

### Conque ###

Conque is awesome. It allows you to run (and interact with) any executable
inside vim. This means that you can run a shell, irb, script/console, or any
similar tool inside of a vim buffer. I've got a few default bindings set up as
follows (each of these, by default, opens the new buffer in a new
horizontally-split window):

* `<Leader>ss` - this starts your `$SHELL` in a new buffer.
* `<Leader>sc` - this starts `./script/console` in a new buffer.
* `<Leader>si` - this starts `irb` in a new buffer.
* `<Leader>sx` - this starts... whatever you want :) it prompts you to enter the
  executable you want to run, and then starts it in a new buffer.

### dbext.vim ###

Dbext is a very powerful plugin that provides database integration with vim. For
the most part, this is included because Rails.vim plays very nicely with it, but
you can also use it on its own if you prefer.

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

### Rake.vim ###

Rake.vim provides some of the nicer functionality from Rails.vim but for any
ruby project, not just those that make use of Rails. `:help rake` for more
information.

### Rails.vim ###

Rails.vim provides a lot of nice functionality for working with Rails
applications. There's a lot of really cool functionality that would take a while
to explain - if you do any rails work, you should run `:help rails-introduction`
and read up on everything that it offers.

I've made a couple of config changes to rails.vim (mostly changing the automatic
2-space setting that it uses for indentation, since I'm required to use 3 spaces
at work), which can be found in `vim/config/rails.vim`.

### repeat.vim ###

Vim comes with a native 'repeat' operator - the `.` key will repeat the last
action executed. The problem is, this doesn't work for most plugins - if you hit
`.` after executing something with surround.vim, for example, only the last
_native_ command will be repeated (not the whole process, like you wanted).
Repeat.vim provides a way for plugins to hook into the `.` binding and use it
correctly. Currently, only surround.vim provides support for this, but hopefully
others will soon.

### rvm.vim ###

rvm.vim allows you to place an indicator in your status line that determines
which Ruby/Gemset you're currently using through RVM (the Ruby Version Manager).
Although I highly recommend using RVM if you're a Rubyist, you can simply remove
rvm.vim if you don't find this helpful.

### SnipMate ###

SnipMate gives you snippets - pieces of often typed text you can insert into
your document using a trigger word. Checkout the help files (`:help snipmate`)
or view the plugin's website at vim.org for more specifics.

### Space.vim ###

Space.vim allows you to use the <Space> key as a repeat key for some complex
motion commands (most notably for me, searching - I can search for something and
then hit space to move forward and shift-space to move backwards through the
results). Run `:help space-intro` to read up on it.

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

### TailMinusF ###

TailMinusF allows you to open a buffer that watches the contents of a file in
a similar fashion to the UNIX command `tail -f` (hence the name). This is mostly
included as a dependency to Rails.vim, but you can use it on its own via the
`:Tail` command.

### VimOutliner ###

VimOutliner is a tool for creating outlines (.otl files). It's got some neat
features, including automatically calculating the completion percentage of
a given outline. There's a handy cheatsheet
[here](http://sites.google.com/site/vimoutlinerinfo/vimoutliner-cheat-sheet).

### YankRing ###

YankRing adds the equivalent of Emacs' "Kill Ring" to Vim. It wraps Vim's
default yank/delete mechanisms and allows you to easily work with the last `n`
items that you've put in Vim's registries - it's sort of a clipboard manager for
Vim. 

`:help yankring` will give you the full rundown as well as a tutorial.

You can also view the configuration I've set up by examining
`vim/config/yankring.vim`.

