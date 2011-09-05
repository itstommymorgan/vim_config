# VIM\_CONFIG #

## INTRODUCTION ##

This is a vim configuration created by [duwanis](http://www.duwanis.com
"Duwanis.com").

This is actually the second rendition of this config. 
It's still a bit of a work-in-progress, and the documentation is lackluster. If
you're looking for the fully-documented original version, check out the v1.0
tag.

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

## FEATURES ##

#### Sensible Keybinding Defaults ####
* There's a cheatsheet file in the .vim folder that lists all the details.
* In several cases, there are two bindings for a single letter (e.g. <Leader>w and <Leader>W) - shift-bindings (capital letters) are reserved for "more dangerous" versions of the normal (lowercase letters) bindings.
* <Leader>x is reserved for an "extension" set of commands, similar to C-x in Emacs. (If you're not familiar with Emacs, all you need to know is that <Leader>x is never a keybinding *by itself*, it's used to give us more options for keybindings.)

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

TBD

## PLUGINS ##

TBD
