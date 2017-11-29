" Vim Syntax file.
" Language SQL
" Maintainer Simon Long.
" Email grslong@gmail.com

:highlight Constant     cterm=underline
:highlight Identifier   cterm=underline
:highlight Statement    cterm=underline
:highlight PreProc      cterm=underline
:highlight Type         cterm=underline
:highlight Special      cterm=underline
:highlight Underlined   cterm=underline
:highlight Error        cterm=bold

" Color specifications. Change them as you would like.
hi Comment      term=none       ctermfg=red     guifg=none
hi Constant     term=underline  ctermfg=cyan    guifg=Cyan
hi Identifier   term=underline  ctermfg=red     guifg=White
hi Statement    term=bold       ctermfg=green   guifg=White
hi PreProc      term=underline  ctermfg=magenta guifg=Blue
hi Type         term=underline  ctermfg=white   guifg=White
hi Special      term=bold       ctermfg=cyan    guifg=Blue
hi Nontext      term=bold       ctermfg=red     guifg=Red
" hi Normal       guifg=Yellow    guibg=#00007F
" hi Normal       ctermfg=darkgreen

hi Comment      cterm=none  gui=none
hi Constant     cterm=none  gui=none
hi Identifier   cterm=none  gui=none
hi Statement    cterm=none  gui=none
hi PreProc      cterm=none  gui=none
hi Type         cterm=none  gui=none
hi Special      cterm=none  gui=none
hi NonText      cterm=none  gui=none
hi Todo         cterm=none  gui=none ctermfg=blue  ctermbg=none  

" Keywords
syn keyword sqlKeyword SELECT INSERT DELETE UPDATE WHERE SET USE CREATE DATABASE FROM AS TO 
syn keyword sqlKeyword LIMIT UPPER JOIN INNER LEFT OUTER WRITE
syn keyword sqlKeyword TABLES UNLOCK LOCK PRIMARY KEY CONSTRAINT 
syn keyword sqlKeyword REFERENCES CURRENT_TIMESTAMP AUTO_INCREMENT ENGINE CHARSET 
syn keyword sqlKeyword InnoDB CONCAT COALESCE
syn keyword sqlKeyword PRIMARY KEY CONSTRAINT FOREIGN REFERENCES UNSIGNED CURRENT_TIMESTAMP
syn keyword sqlKeyword AUTO_INCREMENT ENGINE
syn keyword sqlKeyword CHARSET InnoDB CONCAT COALESCE NULL FOREIGN ENUM




" Comments.
" Matches any line where the first character is a #.
syn match sqlComment "^\s*#.\+$"
" Matches any line that starts ' - - '.
syn match sqlComment "^\s-\s-\s.\+$"
syn match sqlTodo "^# todo.\+$"


syn match sqlIdentifier ","

:highlight link sqlKeyword Keyword
:highlight link sqlConstant Constant
"any constant String a string constant: 'this is a string'
"Character a character constant: 'c', '\n'
"Number a number constant: 234, 0xff
"Boolean a boolean constant: TRUE, false
"Float a floating point constant: 2.3e10

:highlight link sqlComment Comment
:highlight link sqlIdentifier Identifier
" any variable name Function   function name (also: methods for classes)

:highlight link sqlStatement Statement
" any statement
" Conditional if, then, else, endif, switch, etc.
" Repeat for, do, while, etc.
" Label case, default, etc.
" Operator "sizeof", "+", "*", etc.
" Keyword any other keyword
" Exception try, catch, throw

:highlight link sqlPreProc PreProc
" generic Preprocessor
" Include preprocessor #include
" Define preprocessor #define
" Macro same as Define
" PreCondit preprocessor #if, #else, #endif, etc.

:highlight link sqlType Type
syn keyword sqlType TINYINT SMALLINT MEDIUMINT INT BIGINT DECIMAL FLOAT DOUBLE BIT BLOB TIMESTAMP CHAR DATE
" int, long, char, etc.
" StorageClass static, register, volatile, etc.
" Structure struct, union, enum, etc.
" Typedef A typedef 
   
:highlight link sqlSpecial Special
syn match   sqlSpecial "`\w\+`"
" any special symbol SpecialChar special character in a constant Tag      
" you can use CTRL-] on this Delimiter  character that needs attention SpecialComment special things inside a comment Debug      debugging statements

:highlight link sqlUnderlined Underlined 
" text that stands out, HTML links

:highlight link sqlIgnore Ignore
" left blank, hidden  |hl-Ignore|

:highlight link sqlError Error
" any erroneous construct

:highlight link sqlTodo Todo
syn keyword sqlTodo TODO FIXME
" anything that needs extra attention;
" mostly the keywords TODO FIXME and XXX
