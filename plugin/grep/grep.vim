" space::tekk
" grep command
let g:grep_exclude = '~/.exclude'
command! -nargs=+ -complete=file G execute 'silent grep! --extended-regexp --recursive --line-number --binary-files=without-match --exclude-from ' . g:grep_exclude . ' <args>' | redraw | cwindow
nmap <leader>g :G <c-r>=expand("<cword>")<cr><cr>
