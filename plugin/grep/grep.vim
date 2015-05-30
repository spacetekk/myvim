" space::tekk
" grep command
if exists('loaded_grep')
    finish
endif
let loaded_grep=1

let g:grep_exclude = '~/.exclude'
let g:grep_exclude_dirs = ''
let g:grep_default_args = '--extended-regexp --recursive --line-number --binary-files=without-match'

function s:RunGrep(grep_args)
    let grep_cmd = 'grep! ' . g:grep_default_args
    let grep_exclude = glob(g:grep_exclude)
    if filereadable(l:grep_exclude)
        let grep_cmd = l:grep_cmd . ' --exclude-from=' . l:grep_exclude
    endif
    if filereadable(glob(g:grep_exclude_dirs))
        let grep_cmd = l:grep_cmd . ' --exclude-dirs=' . g:grep_exclude_dirs
    endif
    
    let grep_cmd = l:grep_cmd . ' ' . a:grep_args
    silent execute l:grep_cmd
    redraw
    copen
    redraw
endfunction 

command! -nargs=+ -complete=file G call s:RunGrep('<args>')
