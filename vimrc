" Using TPope;s Pathogen.
execute pathogen#infect()

    " Set Leaders.
    :let mapleader=";"
    :let maplocalleader=";"

    " Use jk instead of the <USC> key to exit insert mode.
    :inoremap jk <esc>

    " Surround words with specific characters.
    :inoremap <leader>" <esc>viw<space>""<esc>bpi
    :inoremap <leader>' <esc>diwi<space>''<esc>bpi
    :inoremap <leader>[ <esc>diwi<space>[]<esc>bpi
    :inoremap <leader>{ <esc>diwi<space>{}<esc>bpi

    " Spell checking
    :setlocal spell spelllang=en_gb
    :nnoremap <leader>s mm[s1z=`m
    :set nospell

    " Stop the arrow keys from working to break the habit of using them.
    :noremap <Up> <NOP>
    :noremap <Down> <NOP>
    :noremap <Left> <NOP>
    :noremap <Right> <NOP>

    " Turn on syntax Highlighting.
    :syntax enable

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
    :nnoremap <leader>a zM

    " Learn Vim script the Hard Way
    "Upper-case a word in normal and insert modes.
    :nnoremap <leader>U viwU
    :inoremap <leader>U <esc>viwUi
    "Lower-case a word in normal and insert modes.
    :nnoremap <leader><leader>u viwu
    :inoremap <leader><leader>u <esc>viwui
    " Speed-up access to .mimic
    :nnoremap <leader>ev :vsplit $MYVIMRC<cr>
    :nnoremap <leader>sv :source  $MYVIMRC<cr>
    " Make space more useful.
    :nnoremap <space> za

    "
    :inoremap <leader>{ {}<esc>O<tab>
    :inoremap <leader>[ []<esc>O<tab>
    :inoremap <leader>( ()<esc>O<tab>

    :nnoremap - ddp
    :nnoremap + ddkP

    " Abbreviations
    :iabbrev adn and
    :iabbrev waht what
    :iabbrev tehn then
    :iabbrev teh the
    :iabbrev @@ grslong@gmail.com
    :iabbrev ccopy Copyright 2017 Simon Long, all rights reserved.
    :iabbrev ssig -----------------<cr>Simon Long<cr>grslong@gmail.com<cr>-----------------
    :iabbrev wweb www.grsl.co.uk
    :iabbrev <buffer> --- &mdash; 

    " Comment out lines
    :autocmd FileType sql nnoremap <buffer> <localleader>c I#<esc>
    :autocmd FileType mysql nnoremap <buffer> <localleader>c I#<esc><space>
    :autocmd FileType php nnoremap <buffer> <localleader>c I//<esc><space>
    :autocmd FileType php nnoremap <buffer> <localleader>cc I/*<cr><cr>//*/<esc>k<tab>i

    " Uncomment lines
    :autocmd FileType sql nnoremap <buffer> <localleader>uc Ix<esc>



    :autocmd FileType html nnoremap <buffer> " &ldquo; 
    :autocmd FileType html nnoremap <buffer> " &rdquo; 
    :autocmd FileType html nnoremap <buffer> & &amp; 

    :autocmd FileType python     :iabbrev <buffer> iff if:<left>
    :autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
    :autocmd FileType php        :iabbrev <buffer> iff if () {<cr><cr>}<esc>kkf(a
    :autocmd FileType php        :iabbrev <buffer> ife if () {<cr><cr>}<cr>else () {<cr><cr>}<esc>5kf(a
