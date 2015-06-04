" Vim color file
" Original Maintainer:    Apanovich Stanislav (inbox@spacetekk.ru)
" Last Change:  2012-07-12
"

set background=dark

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name = "st256"
  
hi Normal       ctermfg=7    ctermbg=none    cterm=none
hi CursorLine                ctermbg=234     cterm=none
hi Visual       ctermfg=0    ctermbg=151     cterm=none
hi VisualNOS    ctermfg=0    ctermbg=151     cterm=none
hi StatusLine	ctermfg=255    ctermbg=0     cterm=none
hi Folded       ctermfg=243  ctermbg=none    cterm=none
hi VertSplit    ctermfg=232  ctermbg=232     cterm=none
hi LineNr       ctermfg=243  ctermbg=none    cterm=none
hi Search       ctermfg=0    ctermbg=185     cterm=none
hi MatchParen   ctermfg=0    ctermbg=185     cterm=none
hi Pmenu        ctermfg=230  ctermbg=238
hi PmenuSel     ctermfg=232  ctermbg=151
hi WildMenu     ctermfg=232  ctermbg=151
hi SignColumn   ctermfg=none ctermbg=none    cterm=none
hi WarningMsg   ctermfg=0    ctermfg=185                                   
hi ErrorMsg     ctermfg=0    ctermbg=167     cterm=none

hi Number       ctermfg=11   cterm=none
hi Special      ctermfg=109  cterm=none
hi String       ctermfg=144  cterm=none

hi Define       ctermfg=3    cterm=none
hi Function     ctermfg=139  cterm=none
hi Statement    ctermfg=103  cterm=none

hi Comment      ctermfg=238  cterm=none
hi PreProc      ctermfg=243  cterm=none

hi Type         ctermfg=108  cterm=none
hi Builtin      ctermfg=108  cterm=none

hi Constant     ctermfg=1        cterm=none
"hi Identifier   ctermfg=192        cterm=none

"hi Keyword      ctermfg=111        cterm=none

" Diff highlighting
hi DiffAdd                   ctermbg=17
hi DiffDelete    ctermfg=234 ctermbg=60        cterm=none
hi DiffText                  ctermbg=53        cterm=none
hi DiffChange                ctermbg=237

" Links
hi! link FoldColumn      Folded
hi! link CursorColumn    CursorLine
hi! link NonText         LineNr

" hi TabLineFill  ctermfg=DarkGrey ctermbg=232    cterm=none
" hi TabLine      ctermfg=DarkGrey ctermbg=232    cterm=none
" hi TabLineSel   ctermfg=232    ctermbg=DarkGrey cterm=none

"hi CursorIM
"hi Directory
"hi IncSearch
"hi Menu
"hi ModeMsg
"hi MoreMsg
"hi PmenuSbar
"hi PmenuThumb
"hi Question
"hi Scrollbar
" hi SpecialKey   ctermfg=185  ctermbg=italic    cterm=bold
" hi SpellBad        ctermfg=196        ctermbg=236        cterm=none
"hi SpellCap
"hi SpellLocal
"hi SpellRare
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu

" vim:set ts=4 sw=4 noet:
