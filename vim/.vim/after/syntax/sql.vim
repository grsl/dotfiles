" Vim Syntax file.
" Language SQL
" Maintainer Simon Long.
" Email grslong@gmail.com

" Structure struct, union, enum, etc.

" Label          case, default, etc.
" Operator       "sizeof", "+", "*", etc.
" Keyword        any other keyword
" Include        preprocessor #include
" Define         preprocessor #define
" Macro          same as Define
" Character      a character constant: 'c', '\n'    "Boolean a boolean constant: TRUE, false
" Character      a character constant: 'c', '\n'
" *Error         any erroneous construct
" Exception      try, catch, throw
" Float          a floating point constant: 2.3e10
" *Ignore        left blank, hidden  |hl-Ignore|
" Include        preprocessor #include
" Keyword        any other keyword
" Label          case, default, etc.
" Macro          same as Define
" PreCondit      preprocessor #if, #else, #endif, etc.
" SpecialComment special things inside a comment Debug debugging statements
" SpecialChar    special character in a constant

" :highlight Boolean           cterm=bold ctermfg=red     guifg=none 
" :highlight Character              ctermfg=red     guifg=none 
" :highlight Comment                ctermfg=red     guifg=none
" :highlight Conditional            ctermfg=none    guifg=none
" :highlight Constant          ctermfg=cyan    guifg=Cyan
" :highlight Debug                  ctermfg=cyan    guifg=Cyan
" :highlight Define                 ctermfg=cyan    guifg=Cyan
" :highlight Delimiter              ctermfg=cyan    guifg=Cyan
" :highlight Error             ctermfg=red     guifg=White 
" :highlight Exception         ctermfg=red     guifg=White
" :highlight Float             ctermfg=red     guifg=White
" :highlight Function          ctermfg=red     guifg=White
" :highlight Identifier        ctermfg=red     guifg=White
" :highlight Ignore            ctermfg=red     guifg=White
" :highlight Include           ctermfg=red     guifg=White
:highlight Keyword             ctermfg=cyan    guifg=cyan
" :highlight Label             ctermfg=red     guifg=White
" :highlight Macro             ctermfg=red     guifg=White
" :highlight Nontext                ctermfg=red     guifg=Red
" :highlight Number            ctermfg=red     guifg=White
" :highlight Operator          ctermfg=red     guifg=White
" :highlight PreCondit         ctermfg=red     guifg=White
" :highlight PreProc           ctermfg=magenta guifg=Blue
" :highlight Repeat            ctermfg=magenta guifg=Blue 
" :highlight Special                ctermfg=cyan    guifg=Blue
" :highlight SpecialComment    ctermfg=red     guifg=White
" :highlight Statement              ctermfg=green   guifg=White
" :highlight StorageClass      ctermfg=red     guifg=White
" :highlight String            ctermfg=red     guifg=White
" :highlight Structure         ctermfg=red     guifg=White
" :highlight Tag               ctermfg=red     guifg=White
" :highlight Todo              ctermfg=blue    ctermbg=none    gui=none 

" *Type int, long, char, etc.
:highlight Type             ctermfg=white   guifg=White 
" :highlight Typedef          term=none  ctermfg=red     guifg=White
" :highlight Underlined       term=none  ctermfg=red     guifg=White
         
" Keywords
syn keyword sqlKeyword AS DELETE WHERE DATABASE AUTO_INCREMENT CHARSET COALESCE
syn keyword sqlKeyword CONCAT CONSTRAINT CREATE CURRENT_TIMESTAMP DROP ENGINE EXISTS
syn keyword sqlKeyword FOREIGN FROM INNER INSERT InnoDB JOIN KEY LEFT LIMIT LOCK NOT NULL
syn keyword sqlKeyword OUTER PRIMARY REFERENCES SELECT SET TABLES TO UNLOCK UNSIGNED
syn keyword sqlKeyword UPDATE UPPER USE WRITE COLLATE RESTRICT

syn keyword sqlType BIGINT BIT BLOB CHAR DATE DATETIME DECIMAL DOUBLE ENUM FLOAT INT
syn keyword sqlType MEDIUMINT SMALLINT TIMESTAMP TINYINT TRUNCATE

" Comments.
<<<<<<< HEAD
" Matches any line where the first character is a #.
syn match sqlComment "^\s*#.\+$"
" Matches any line that starts ' - - '.
syn match sqlComment "^\s-\s-\s.\+$"
syn match sqlComment "/*.\+*/"
syn match sqlTodo "^# todo.\+$"
=======
syn match sqlComment "^\s*#.\+$"        " Matches any line where the first character is a #.
syn match sqlComment "^\s-\s-\s.\+$"    " Matches any line that starts ' - - '.
>>>>>>> 8cd46ba79e83bf17c1cbf5778e754b64f91a3172

syn match sqlTodo "^# todo.\+$"
syn match sqlIdentifier ","

:highlight link sqlKeyword      Keyword
:highlight link sqlComment      Comment
:highlight link sqlConstant     Constant
:highlight link sqlTodo         Todo
:highlight link sqlIdentifier   Identifier
:highlight link sqlStatement    Statement 
:highlight link sqlPreProc      PreProc 
:highlight link sqlType         Type 
:highlight link sqlSpecial      Special

syn match   sqlSpecial "`\w\+`" " any special symbol SpecialChar special character in a
                                " constant Tag

:highlight link sqlBoolean    Boolean      "  text that stands out, HTML links
:highlight link sqlCharacter  Character    "  text that stands out, HTML links
:highlight link sqlComment    Comment      "  text that stands out, HTML links

:highlight link sqlUnderlined Underlined " text that stands out, HTML links
:highlight link sqlIgnore     Ignore " left blank, hidden  |hl-Ignore|
:highlight link sqlError      Error " any erroneous construct

" anything that needs extra attention; mostly the keywords TODO FIXME and XXX
syn keyword sqlTodo TODO FIXME XXX 

