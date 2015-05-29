" space::tekk
" grep command
let g:grep_exclue = '~/.exclude'
command! -nargs=+ -complete=file G execute 'silent grep! --extended-regexp --recursive --line-number --exclude-from ' . g:grep_exclue . ' <args>' | redraw | cwindow
nmap <leader>g :G <c-r>=expand("<cword>")<cr><cr>
