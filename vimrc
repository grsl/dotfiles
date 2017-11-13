" Using TPope's Pathogen.
"execute pathogen#infect()

" Set Leaders.
    :let mapleader = ';'
    :let maplocalleader = ';'

    :set laststatus=2
    :set statusline=%-F\ \ 
    :set statusline+=Current:\ %-4l
    :set statusline+=Total\ %-4L
    :set backspace=2   "
    :set autowrite     " Automatically :write before running commands.
    :set ruler         " Show the cursor position at all times.

" Turn on syntax Highlighting.
    :syntax enable

" Use jk instead of the <USC> key to exit insert mode.
    :inoremap jk <esc>

" Surround words with specific characters.
    :inoremap <localleader>" <esc>viw<space>""<esc>bpi
    :inoremap <localleader>' <esc>diwi<space>''<esc>bpi
    :inoremap <localleader>[ <esc>diwi<space>[]<esc>bpi
    :inoremap <localleader>{ <esc>diwi<space>{}<esc>bpi

" Navigate Splits 
    :nnoremap <localleader>J <C-w>j
    :nnoremap <localleader>K <C-w>k
    :nnoremap <localleader>L <C-w>l
    :nnoremap <localleader>H <C-w>h

" Spell checking
    :setlocal spell spelllang=en_gb
    :nnoremap <localleader>s mm[s1z=`m
    :set nospell

" Stop the arrow keys from working to break the habit of using them.
    :noremap <Up> <NOP>
    :noremap <Down> <NOP>
    :noremap <Left> <NOP>
    :noremap <Right> <NOP>

" Tab settings.
    :set tabstop=4
    :set softtabstop=4
    :set expandtab
    :set shiftwidth=4
    :set autoindent

    " Screen display.
    :set number
    :set numberwidth=3

    " Folding.
    :set foldmethod=indent
    :set foldlevel=5
    :set foldenable
    :nnoremap <localleader>a zM

    " Learn Vim script the Hard Way
    "Upper-case a word in normal and insert modes.
    :nnoremap <localleader>U viwU
    :inoremap <localleader>U <esc>viwUi
    "Lower-case a word in normal and insert modes.
    :nnoremap <localleader><localleader>u viwu
    :inoremap <localleader><localleader>u <esc>viwui
    " Speed-up access to .mimic
    :nnoremap <localleader>ev :vsplit $MYVIMRC<cr>
    :nnoremap <localleader>sv :source  $MYVIMRC<cr>
    " Make space more useful.
    :nnoremap <space> za

    "
    :inoremap <localleader>{ {}<esc>O<tab>
    :inoremap <localleader>[ []<esc>O<tab>
    :inoremap <localleader>( ()<esc>O<tab>

    :nnoremap - ddp
    :nnoremap + ddkP

" Abbreviations
    :iabbrev adn and
    :iabbrev waht what
    :iabbrev soem some
    :iabbrev tehn then
    :iabbrev teh the
    :iabbrev @@ grslong@gmail.com
    :iabbrev ccopy Copyright 2017 Simon Long, all rights reserved.
    :iabbrev ssig -----------------<cr>Simon Long<cr>grslong@gmail.com<cr>-----------------
    :iabbrev wweb www.grsl.co.uk
    :iabbrev <buffer> --- &mdash; 

" HTML Mappings
:inoremap p<tab> <p></p><Esc>F<i
:inoremap 1<tab> <h1></h1><Esc>F<i
:inoremap div<tab> <div class=""><cr><cr></class><Esc>2kf"a

" SQL  Mappings


:if !exists("autocommands_loaded")
:   let autocommands_loaded = 1 

    " Comment out lines
        :autocmd FileType sql   nnoremap <buffer> <localleader>c I#<esc>
        :autocmd FileType mysql nnoremap <buffer> <localleader>c I#<esc><space>
        :autocmd FileType php   nnoremap <buffer> <localleader>c I//<esc><space>
        :autocmd FileType php   nnoremap <buffer> <localleader>cc I/*<cr><cr>//*/<esc>k<tab>i

    " Uncomment lines
    :autocmd FileType sql   nnoremap <buffer> <localleader>uc Ix<esc>
    :autocmd FileType mysql nnoremap <buffer> <localleader>uc Ix<esc>
    :autocmd FileType php   nnoremap <buffer> <localleader>uc Ix<esc>

    " HTML Files.
    :autocmd FileType html nnoremap <buffer> " &ldquo; 
    :autocmd FileType html nnoremap <buffer> " &rdquo; 

    " JavaScript Files.
    :autocmd FileType javascript :iabbrev <buffer> iff if ()<left>

    "  PHP Files.
    :autocmd FileType php :iabbrev <buffer> iff if () {<cr><cr>}<esc>kkf(a
    :autocmd FileType php :iabbrev <buffer> ife if () {<cr><cr>}<cr>else () {<cr><cr>}<esc>5kf(a

    " Python Files.
    :autocmd FileType python :iabbrev <buffer> iff if:<left>
    :autocmd FileType html    nnoremap <buffer> & &amp; 
:endif
