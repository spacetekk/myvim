setlocal dictionary+=$HOME/.vim/bundle/vimfiles/dic/python/keywords.txt
" Vim filetype plugin file
" Language:	python
" Maintainer: space::tekk
" Last Changed: 2015-06-07


" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C


" autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class


setlocal dictionary+=~/.vim/bundle/vimfiles/dic/pgsql/keywords
setlocal dictionary+=~/.vim/bundle/vimfiles/dic/pgsql/types
setlocal dictionary+=~/.vim/bundle/vimfiles/dic/pgsql/builtin_functions

let &cpo = s:save_cpo
