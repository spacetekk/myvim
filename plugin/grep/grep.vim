" space::tekk
" grep command
command! -nargs=+ -complete=file G execute 'silent grep! --extended-regexp --recursive --line-number --exclude-from ~/.exclude <args>' | redraw | cwindow
nmap <leader>g :G <c-r>=expand("<cword>")<cr><cr>
