if exists('b:current_syntax')
    finish
endif

" Load Python syntax at the top level
runtime! syntax/python.vim
unlet b:current_syntax

" Load PGSQL syntax
syn include @PGSQL syntax/plpgsql.vim

" We don't need these (a string inside a string!)
" syn cluster PGSQL remove=pgsqlString,pgsqlComment
syn cluster PGSQL remove=pgsqlString
" syn cluster PGSQL remove=sqlString
" syntax clear pgsqlString

" Clear existing syntax
syntax clear pythonString

" Triple-quoted strings can contain doctests.
syn region pythonString       start=+[bB]\='+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonEscape,pythonEscapeError,@Spell
syn region pythonString       start=+[bB]\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonEscape,pythonEscapeError,@Spell
syn region pythonString       start=+[bB]\="""+ end=+"""+ keepend contains=pythonEscape,pythonEscapeError,pythonDocTest2,pythonSpaceError,@Spell

syntax region pythonSqlString    start=+[bB]\='''+ end=+'''+ keepend contains=pythonEscape,@PGSQL containedin=pythonString
" syntax region sqlSnippet start=/'''\C\zs\v(select|insert|update|delete|create|drop)/ end=/\ze'''/ contains=@SQL containedin=pythonString
"
hi def link pythonSqlString Normal

" if version >= 508
"   if version <= 508
"     let did_python_syn_inits = 1
"     command -nargs=+ HiLink hi link <args>
"   else
"     command -nargs=+ HiLink hi def link <args>
"   endif
" 
"   HiLink pythonSqlString Normal
" 
"   delcommand HiLink
" endif

let b:current_syntax = 'pypgsql'
