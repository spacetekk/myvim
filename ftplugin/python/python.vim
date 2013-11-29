" Vim filetype plugin file
" Language:	python
" Maintainer: space::tekk
" Last Changed: 2011-03-03
" URL:		http://spacetekk.ru/


" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C


setlocal textwidth=80

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

setlocal include=\\\(from\\\|import\\\)\\\?

setlocal dictionary+=$HOME/.vim/dic/python/words.txt

" imap <nul> <c-r>=RopeCodeAssistInsertMode()<cr>
imap <buffer> <c-i> <c-r>=RopeCodeAssistInsertMode()<cr>

python << EOF
import os
import sys
import vim
for p in sys.path:
    # Add each directory in sys.path, if it exists.
    if os.path.isdir(p):
        # Command 'set' needs backslash before each space.
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF

let &cpo = s:save_cpo
