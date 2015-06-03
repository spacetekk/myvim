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
  
" General colors
hi Normal    ctermfg=7        ctermbg=none    cterm=none
hi Cursor                      ctermbg=228        cterm=none
hi CursorLine                    ctermbg=234        cterm=none
hi Visual        ctermfg=251        ctermbg=239        cterm=none
hi VisualNOS    ctermfg=251        ctermbg=236        cterm=none
hi Search        ctermfg=0        ctermbg=184        cterm=none
hi Folded        ctermfg=103        ctermbg=237        cterm=none
hi Title        ctermfg=230                        cterm=bold
hi StatusLine    ctermfg=230        ctermbg=238        cterm=none
hi VertSplit    ctermfg=238        ctermbg=238        cterm=none
hi StatusLineNC    ctermfg=231        ctermbg=238        cterm=none
hi LineNr        ctermfg=241        ctermbg=none    cterm=none
hi SpecialKey    ctermfg=241        ctermbg=none    cterm=none
hi WarningMsg    ctermfg=203                                    
hi ErrorMsg        ctermfg=196        ctermbg=236        cterm=bold

hi MatchParen    ctermfg=228        ctermbg=101        cterm=bold
hi Pmenu        ctermfg=230        ctermbg=238                        guifg=#ffffd7    guibg=#444444
hi PmenuSel        ctermfg=232        ctermbg=192                        guifg=#080808    guibg=#cae982

" Syntax highlighting
hi Keyword        ctermfg=111        cterm=none        guifg=#88b8f6    gui=none
hi Statement    ctermfg=103        cterm=bold        guifg=#88b8f6    gui=none
hi Constant        ctermfg=173        cterm=none        guifg=#e5786d    gui=none
hi Number        ctermfg=131        cterm=none        guifg=#e5786d    gui=none
hi PreProc        ctermfg=173        cterm=none        guifg=#e5786d    gui=none
hi Function        ctermfg=139        cterm=none        guifg=#cae982    gui=none
hi Identifier    ctermfg=192        cterm=none        guifg=#cae982    gui=none
hi Type            ctermfg=155        cterm=none        guifg=#d4d987    gui=none
hi Special        ctermfg=174        cterm=none        guifg=#eadead    gui=none
hi String        ctermfg=144        cterm=none        guifg=#95e454    gui=italic

hi Comment        ctermfg=244        cterm=none        guifg=#9c998e    gui=italic
hi Todo            ctermfg=101        cterm=none        guifg=#857b6f    gui=italic
hi Define       ctermfg=139     cterm=bold        guifg=#cae982    gui=none

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
hi SignColumn    ctermfg=241        ctermbg=none    cterm=none        guifg=#857b6f    guibg=#080808    gui=none
hi SpellBad        ctermfg=196        ctermbg=236        cterm=none        guifg=#ff2026    guibg=#3a3a3a    gui=italic
"hi SpellCap
"hi SpellLocal
"hi SpellRare
hi TabLineFill ctermfg=DarkGrey ctermbg=Black cterm=none guifg=DarkGrey guibg=DarkGrey
hi TabLine ctermfg=DarkGrey ctermbg=Black cterm=none guifg=DarkGrey guibg=DarkGrey
hi TabLineSel ctermfg=Black ctermbg=DarkGrey cterm=none guifg=DarkGrey guibg=DarkGrey
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu

" Diff highlighting
hi DiffAdd                        ctermbg=17                                        guibg=#2a0d6a
hi DiffDelete    ctermfg=234        ctermbg=60        cterm=none        guifg=#242424    guibg=#3e3969    gui=none
hi DiffText                        ctermbg=53        cterm=none                        guibg=#73186e    gui=none
hi DiffChange                    ctermbg=237                                        guibg=#382a37

" Links
hi! link FoldColumn        Folded
hi! link CursorColumn    CursorLine
hi! link NonText        LineNr

" vim:set ts=4 sw=4 noet:
