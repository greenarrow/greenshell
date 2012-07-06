" Maintainer:	Lars H. Nielsen (dengmao@gmail.com)
" Last Change:	January 22 2007

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "greencobalt"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#2d2d2d
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu 		guifg=#f6f3e8 guibg=#444444
  hi PmenuSel 	guifg=#000000 guibg=#cae682
endif

" General colors
hi Cursor 		guifg=NONE    guibg=#ffffff gui=none
hi Normal 		guifg=#ffffff guibg=#001b33 gui=none
hi NonText 		guifg=#808080 guibg=#001b33 gui=none
hi LineNr 		guifg=#0065bf guibg=#000d1a gui=none
hi StatusLine 	guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444 gui=none
hi VertSplit 	guifg=#444444 guibg=#444444 gui=none
hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi Visual		guifg=#f6f3e8 guibg=#444444 gui=none
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none

" Syntax highlighting
hi Comment 		guifg=#0088ff gui=italic
hi Todo 		guifg=#8f8f8f gui=italic
hi Constant 	guifg=#ffee80 gui=none
hi String 		guifg=#3ad900 gui=italic
hi Identifier 	guifg=#cccccc gui=none
hi Function 	guifg=#cccccc gui=none
hi Type 		guifg=#80ffbb gui=none
hi Statement 	guifg=#ff9d00 gui=none
hi Keyword		guifg=#ff9d00 gui=none
hi PreProc 		guifg=#e5786d gui=none
hi Number		guifg=#3ad900 gui=none
hi Special		guifg=#cccccc gui=none



