" Vim filetype plugin file
" Language: python
" Maintainer: space::tekk
" Last Changed: 2015-06-11

let s:save_cpo = &cpo
set cpo-=C

" Text Width:
setlocal textwidth=79

" Remove Trailing Spaces:
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" Highlight All Syntax:
let b:python_highlight_all = 1


" {{{
" autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"setlocal include=\\\(from\\\|import\\\)\\\?

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
" }}}

let &cpo = s:save_cpo
