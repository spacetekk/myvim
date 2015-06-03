" Vim filetype plugin file
" Language:	python
" Maintainer: space::tekk
" Last Changed: 2015-06-04


" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C


setlocal textwidth=80

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"setlocal include=\\\(from\\\|import\\\)\\\?

setlocal dictionary+=$HOME/.vim/bundle/vimfiles/dic/python/keywords.txt

imap <buffer> <c-i> <c-r>=RopeCodeAssistInsertMode()<cr>

"python << EOF
"import os
"import sys
"import vim
"for p in sys.path:
"    # Add each directory in sys.path, if it exists.
"    if os.path.isdir(p):
"        # Command 'set' needs backslash before each space.
"        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
"EOF

let &cpo = s:save_cpo
