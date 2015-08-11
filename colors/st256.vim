"
" Maintainer: space::tekk <inbox@spacetekk.ru>
" Last Change: 2015-06-12
"
set background=dark

if version > 580
    hi clear
    if exists('syntax_on')
        syntax reset
    endif
endif

let colors_name = 'st256'

" Colors: {{{
hi CursorLine                ctermbg=233  cterm=none
" }}}

" Groups: {{{
hi TextGroup    ctermfg=250  ctermbg=none cterm=none
hi MenuGroup    ctermfg=250  ctermbg=235  cterm=none
hi SelectGroup  ctermfg=16   ctermbg=151  cterm=none
hi WarningGroup ctermfg=16   ctermbg=185  cterm=none
hi ErrorGroup   ctermfg=16   ctermbg=167  cterm=none
hi BlankGroup   ctermfg=16   ctermbg=16   cterm=none
hi DarkenGroup  ctermfg=235  ctermbg=232  cterm=none
" }}}

" Links: {{{
hi! link Normal       TextGroup

hi! link Pmenu        MenuGroup
hi! link StatusLine	  MenuGroup
hi! link TabLineSel   MenuGroup

hi! link Error        ErrorGroup
hi! link ErrorMsg     ErrorGroup
hi! link SpellBad     ErrorGroup
 
hi! link SpellCap     WarningGroup
hi! link WarningMsg   WarningGroup
hi! link MoreMsg      WarningGroup
hi! link Search       WarningGroup
hi! link IncSearch    WarningGroup
hi! link MatchParen   WarningGroup
hi! link Question     WarningGroup
hi! link SpecialKey   WarningGroup
hi! link Todo         WarningGroup

hi! link Visual       SelectGroup
hi! link PmenuSel     SelectGroup
hi! link WildMenu     SelectGroup

hi! link Folded       DarkenGroup
hi! link LineNr       DarkenGroup
hi! link FoldColumn   DarkenGroup
hi! link StatusLineNC DarkenGroup
hi! link TabLine      DarkenGroup

hi! link CursorColumn CursorLine
hi! link CursorLineNr Normal

hi! link SignColumn   BlankGroup
hi! link VertSplit    BlankGroup
hi! link NonText      BlankGroup
hi! link TabLineFill  BlankGroup

" Syntasic
" hi! link SyntasticErrorSymbol ErrorGroup
" }}}

" Syntax Highlights: {{{
hi Number       ctermfg=186               cterm=none
hi Special      ctermfg=109               cterm=none
hi String       ctermfg=144               cterm=none
hi Define       ctermfg=138               cterm=none
hi Function     ctermfg=139               cterm=none
hi Statement    ctermfg=103               cterm=none
hi Comment      ctermfg=238               cterm=none
hi PreProc      ctermfg=131               cterm=none
hi Type         ctermfg=179               cterm=none
hi Builtin      ctermfg=108               cterm=none
hi Identifier   ctermfg=150               cterm=none
hi Constant     ctermfg=95                cterm=none
hi Directory    ctermfg=12                cterm=none
hi Operator     ctermfg=239               cterm=none
" hi Keyword
" hi Identifier
" }}}

" Diff: {{{
hi DiffAdd                   ctermbg=60   cterm=none
hi DiffText                  ctermbg=131  cterm=none
hi DiffChange                ctermbg=234  cterm=none
hi DiffDelete                ctermbg=167  cterm=none
" }}}

" Unused: {{{
" hi SpellBad
" hi SpellCap
" hi SpellLocal
" hi SpellRare
" hi User1
" hi User9
" }}}

" vim:set ts=4 sw=4 noet:
