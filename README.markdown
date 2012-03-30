# VIM\_CONFIG #

## INTRODUCTION ##

This is a vim configuration created by [duwanis](http://www.duwanis.com
"Duwanis.com").

It's mostly geared towards doing Ruby development on an OS X machine; hence a
lot of the configurations are Ruby-specific and/or depend on functionality
available in MacVim. But even if you're not a ruby dev and you don't work in
OS X, there might be some useful or otherwise interesting ideas in this
config.

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
4. Symlink it using homesick: `homesick symlink your_github_username/vim_config`
5. Open vim. There will be errors this first time because you haven't
   installed any of the plugins yet. Run `:BundleInstall` to tell Vundle to
   install all of the packages for you (more on Vundle below).
6. Restart vim. Enjoy.

## FEATURES ##

Some of the general changes to default Vim functionality:

1. `Leader` is set to ; - the mapleader key defaults to \\ in Vim, which
   seems kind of... out of the way. I know a lot of people set their
   mapleader to be the comma key so that it's close to the home row; I
   prefer to have mine easily within reach.
2. Keybindings - I generally try to make my keybindings match some kind of
   mnemonic, and they almost always start with `Leader` (I'm just going to use
   `;` for the rest of this README, but if you change `Leader` substitute
   whatever character you use). Notable keybindings:
   - `;w`, `;W`: writes the current buffer (and closes it if you use W)
   - `;q`, `;Q`: close the current window (and all others if you use Q)
   - `;h`, `;j`, `;k`, `;l`: navigate between windows. Life's too short for
     <C-W>.
   - `;;`: opens a vim command prompt (equivalent to `:`). For when you're too
     lazy to hit shift.
   - Buffer navigation - `;b` switches to the last buffer you had open in the
     current window (useful for toggling back and forth between two files), and
     `;B` opens the Ctrl-P buffer window.
   - Tag navigation - `;t` either jumps to the definition of the current word or
     displays a list for you to choose from if it's ambiguous. `;T` pops you
     back up the tag stack (it returns you to where you were before you last
     navigated to a tag definition). `;s` will *always* show you the list, even
     if there's only one match - this is useful for checking the signature of a
     method without leaving the file. `;rt` creates/refreshes your tags file 
     (hopefully in the future you won't have to use this - I'd like to set this
     up on an autocommand) - you will need to have exuberant ctags installed in
     order to take advantage of this.
3. Files remember where your cursor was when you last had them open.
4. Temp files are saved in a central location rather than colocated with your
   files.
5. Display features:
   - a subtly colored line is displayed at the 80-character mark, to encourage
     you to write code in short, readable lines.
   - trailing whitespace is highlighted red in normal mode. Most of the time
     it's not harmful, but when it matters it's a huge pain to find it.

## STRUCTURE ##

This vim config makes use of the Vundle plugin.
Vundle allows plugins to be split into their own individual folders rather than jumbled
together in vim's default locations. This means that if you want to copy this
config but don't like a few of the plugins, you can very easily identify what
needs to be removed.

* bundle - this is the special folder vundle uses to store plugins.
* config - this is where all the custom config files are kept. If you look in
  the vimrc file, you'll see where everything in this folder is loaded
  recursively (even subfolders, if you're obsessive about organizing your config
  settings).
* config/private - this folder is included in .gitignore in case you have some
  personal stuff that you don't want to share (for example, if you want to blog
  using vim, but you don't want to keep your username and password in a git
  repository somewhere :D).

## PLUGINS ##

Plugins are all defined in .vimrc; if you want to remove any just delete its
line from .vimrc and remove the respective folder in your bundle directory.

For some of the plugins below I just use the out-of-the-box configurations; for
the ones that I don't I have their configuration in its own file in the config
directory (e.g. my Ack.vim settings are in config/ack.vim).

### Ack.vim ###

Ack.vim lets you run searches throughout the current working directory. The
command is :Ack, and I've created a keybinding (`;a`) that prompts you for a
search term. `:help Ack` will give you more information.

### Autoclose ###

Autoclose automatically creates closing parens, braces, what-have-you when you
enter the corresponding opening pair. It generally saves you a lot of typing.
Run `:help AutoClose.txt` if you want more information about this plugin.

### Ctrl-P ###

Ctrl-P is a plugin that does fuzzy file-finding for you. It does this in a few
modes, the ones I use almost exclusively is the standard file finder (bound to
`;f`), although it also provides a mode for navigating MRU (most recently used)
files. `:help ctrlp` should give you more information.

### Endwise ###

Endwise is like Autoclose above, except that it works for Ruby and Vimscript as
well, putting "end"-type statements in place as necessary when you type. There
isn't a helpfile for Endwise, presumably because it's so simple and
configurationless that there wouldn't be a point in writing one.

### Fugitive ###

Fugitive is perhaps the single most useful plugin I have in my configs. It's a
native Vim interface for interacting with Git repositories, and as you might
expect provides a lot of functionality. You'll want to read up on it using
`:help fugitive` if you're not familiar with it. I have the following
keybindings set up by default:

- `;gs`: pulls up the git status buffer
- `;gl`: shows the git log
- `;gd`: shows the git diff
- `;gb`: shows the git blame for the current buffer
- `;gp`: runs git push
- `;gu`: runs git pull

### Gist ###

This is a pretty useful little plugin that lets you post stuff to
gist.github.com directly from inside vim. Run `:help gist` to see details on how
to use it.

### Indent Guides ###

Most IDEs provide you with some kind of a dotted line or other visual aid to
help you track long indented bodies of code. Vim doesn't by default, but this
plugin adds it in. I don't use it often and try not to write code where it would
be necessary, but sometimes it's helpful. `;ig` toggles the indent guides.
`:help indent-guides` will give you more information if you're interested.

### NERDTree ###

NERDTree is the second-most useful plugin I have, after Fugitive. NERDTree acts
like a project drawer - it will open a thin buffer along the left side of your
Vim session that displays the contents of the current directory and allows you
to interact with it. `;d` is set to toggle this window on and off, but you'll
definitely want to run `:help NERDTree` and read up on everything you can do
with this plugin.

### Powerline ###

Powerline is a very sexy statusline plugin that puts a lot of information at
your fingertips by default, and does color-coding on your status bars based on
window type, whether it's the active window, and what mode you're in. `:help
powerline` is useful if you want to customize this.

### Rails.vim ###

Rails.vim provides a slew of niceties for interacting with Rails applications
from vim. Rather than go through everything here, just take a look at `:help
rails` if you're interested.

### Repeat.vim ###

Repeat.vim is basically a utility plugin that makes actions some other plugins
take repeatable using `.` like normal vim operations.

### RVM.vim ###

I use RVM to manage my Rubies, and RVM.vim allows me to put the current rvm
version in my statusline. It also provides a few vim commands to let you switch
RVM versions from inside vim - run `:help rvm` to read more.

### Solarized ###

I'm a huge fan of the Solarized colorscheme, so that's installed and loaded up
by default.

### Supertab ###

Supertab is tab-completion for insert mode. Just start typing a word and hit
tab. `:help supertab` gives you more info.

### Surround ###

Surround is a plugin that provides some keybindings for working with surrounding
characters. If you want to quickly surround this sentence with parentheses or
change the single-quotes around that word to double-quotes, Surround is your
plugin. See `:help surround` for info.

### Syntastic ###

Syntastic does syntax checks on certain file types and provides errors inside of
vim for you whenever something's awry. It's a great sanity check even if it is
perhaps a bit over-zealous on HTML-type files... and it integrates fabulously
with Powerline. `:help syntastic` for more info.

### Tomdoc.vim ###

I've started using TomDoc for documenting my Ruby code, and wanted a syntax file
I could load up that would make my TomDoc comments stand out a bit and be easier
to read. That's what Tomdoc.vim does.
