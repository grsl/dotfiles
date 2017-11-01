" Vim Syntax file.
" Language SQL
" Maintainer Simon Long.
" Email grslong@gmail.com

if exists("b:current_syntax")
 finish
endif

:syntax clear

:highlight Comment cterm=underline
:highlight Constant cterm=underline
:highlight Identifier cterm=underline
:highlight Statement cterm=underline
:highlight PreProc cterm=underline
:highlight Type cterm=underline
:highlight Special cterm=underline
:highlight Underlined cterm=underline
:highlight Error cterm=bold


" Color specifications. Change them as you would like.

hi Comment  term=none   ctermfg=gray    guifg=Gray
hi Constant term=underline  ctermfg=cyan    guifg=Cyan
hi Identifier   term=underline  ctermfg=green   guifg=White
hi Statement    term=bold   ctermfg=white   guifg=White
hi PreProc  term=underline  ctermfg=magenta guifg=Magenta
hi Type     term=underline  ctermfg=white   guifg=White
hi Special  term=bold   ctermfg=blue    guifg=Blue
hi Nontext  term=bold   ctermfg=red guifg=Red
hi Normal   guifg=Yellow    guibg=#00007F
hi Normal   ctermfg=darkgreen

hi Comment      cterm=none  gui=none
hi Constant     cterm=bold  gui=none
hi Identifier   cterm=none  gui=none
hi Statement    cterm=bold  gui=none
hi PreProc      cterm=bold  gui=none
hi Type         cterm=bold  gui=none
hi Special      cterm=bold  gui=none
hi NonText  cterm=bold  gui=none

" Keywords
syn keyword sqlKeyword SELECT INSERT DELETE FROM WHERE

:highlight link sqlKeyword Keyword
syn keyword syntaxElementKeyword ACCESSIBLE ACCOUNT ACTION ADD AFTER AGAINST
