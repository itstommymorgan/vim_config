" use <leader>c to prompt for a command to run in vimux
map <Leader>c :VimuxPromptCommand<CR>
map <silent> <C-c> :VimuxInterruptRunner<CR>

function! InTmux()
  let s:tmux_var = system("echo $TMUX")
  return s:tmux_var =~ "\\w\\+"
endfunction

