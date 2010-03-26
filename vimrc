" load all files in the config folder
let configfiles = split(glob("~/.vim/config/*.vim"), "\n")
for filename in configfiles
   exec ":source " . filename
endfor
unlet! configfiles

