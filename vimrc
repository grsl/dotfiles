"
    :set nocompatible
    :filetype plugin on
    :set path+=**
    :set wildmenu
    :set wrap
    :set magic

" Set Leaders.
    :let mapleader = ";"
    :let maplocalleader = ";"

"
    :set laststatus=2
    :set statusline=%-F\ \ 
    :set statusline+=Current:\ %-4l
    :set statusline+=Total\ %-4L
    :set backspace=2   "
    :set autowrite     " Automatically :write before running commands.
    :set ruler         " Show the cursor position at all times.

" Turn on Syntax Highlighting.
    :syntax enable

" Turn on Search Highlighting.
    " :set hlsearch incsearch
    
" Use jk instead of the <USC> key to exit insert mode.
    :inoremap jk <esc>
    " Stop the arrow keys from working to break the habit of using them.
    :noremap <Up> <NOP>
    :noremap <Down> <NOP>
    :noremap <Left> <NOP>
    :noremap <Right> <NOP>

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
    :set foldlevel=1
    :set foldenable
    :nnoremap <localleader>a zM
    :nnoremap <localleader>s zE

    " Learn Vim script the Hard Way
    "Upper-case a word in normal and insert modes.
    :nnoremap <localleader>U viwU
    :inoremap <localleader>U <esc>viwUi
    "Lower-case a word in normal and insert modes.
    :nnoremap <localleader><localleader>u viwu
    :inoremap <localleader><localleader>u <esc>viwui
    " Speed-up access to .vimrc
    :nnoremap <localleader>ev :vsplit $MYVIMRC<cr>
    :nnoremap <localleader>sv :source  $MYVIMRC<cr>
    " Make space more useful.
    :nnoremap <space> za

    "
    :inoremap <localleader>{ {}<esc>O<tab>
    :inoremap <localleader>[ []<esc>O<tab>
    :inoremap <localleader>( ()<esc>O<tab>

    :nnoremap <c-w>o <c-o>
    :nnoremap - ddp
    :nnoremap + ddkP

    " Window Movements.
    :nnoremap <localleader>J <c-w>j
    :nnoremap <localleader>K <c-w>k
    :nnoremap <localleader>L <c-w>l
    :nnoremap <localleader>H <c-w>h
    
    :onoremap in( :<c-u>normal! f(vi(<cr>
    :onoremap in{ :<c-u>normal! f{vi{<cr>
    :onoremap an( :<c-u>normal! t(vi(<cr>
    :onoremap an{ :<c-u>normal! t{vi{<cr>

:nnoremap <localleader>g :grep -R <cword> .<cr>
" Abbreviations
    :iabbrev adn and
    :iabbrev waht what
    :iabbrev soem some
    :iabbrev tehn then
    :iabbrev teh the
    :iabbrev hte the
    :iabbrev @@ grslong@gmail.com
    :iabbrev ccopy Copyright 2017 Simon Long, all rights reserved.
    :iabbrev ssig -----------------<cr>Simon Long<cr>grslong@gmail.com<cr>-----------------
    :iabbrev wweb www.grsl.co.uk

    :onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
    :onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>

:if !exists("autocommands_loaded")
    :let autocommands_loaded = 1 

    " HTML Files.
    :augroup vimFiles
    :   autocmd!
    :   autocmd FileType vim :nnoremap <buffer> <localleader>c I"<space><esc>
    :   autocmd FileType vim :inoremap <buffer> <localleader>c I"<space>
    :augroup END

    " HTML Files.
    :augroup htmlFiles
    :   autocmd!
    :   autocmd FileType html :nnoremap <buffer> " &ldquo; 
    :   autocmd FileType html :nnoremap <buffer> " &rdquo; 
    :   autocmd FileType html :inoremap p<tab> <p></p><Esc>F<i
    :   autocmd FileType html :inoremap 1<tab> <h1></h1><Esc>F<i
    :   autocmd FileType html :inoremap div<tab> <div class=""><cr><cr></div><Esc>2kf"a
    :   autocmd FileType html :inoremap html<tab><!DOCTYPE html><cr><cr><html><cr><cr><head><cr><cr><title></title><cr><cr></head><cr><cr><body><cr><cr></body><cr><cr></html>
    :   iabbrev FileType html <buffer> --- &mdash; 
    :augroup END

    " SQL Files
    :augroup sqlFiles
    :   autocmd!
    " Comment out lines
    :   autocmd FileType sql   :noremap  <buffer> <localleader>c  I#<esc>
    :   autocmd FileType sql   :nnoremap <buffer> <localleader>pc {I/*<esc>}I//*/
    :   autocmd FileType mysql :nnoremap <buffer> <localleader>c  I#<esc>
    :   autocmd FileType mysql :nnoremap <buffer> <localleader>pc {I/*<esc>}I//*/
    " Uncomment lines
    :   autocmd FileType sql   :nnoremap <buffer> <localleader>uc Ix<esc>
    :   autocmd FileType mysql :nnoremap <buffer> <localleader>uc Ix<esc>
    :augroup END

    " PHP Files
    :augroup phpFiles
    :   autocmd! 
    "   Comment out lines
    :   autocmd FileType php :nnoremap <buffer> <localleader>c I//<esc><space>
    :   autocmd FileType php :nnoremap <buffer> <localleader>cc I/*<cr><cr>//*/<esc>k<tab>i
    :   autocmd FileType php :nnoremap <buffer> <localleader>cp I/*<cr><cr>//*/<esc>k<tab>i
    " Uncomment lines
    :   autocmd FileType php :nnoremap <buffer> <localleader>uc Ix<esc>
    :   autocmd FileType vim :nnoremap <buffer> <localleader>uc I" <esc>
    "   Abbreviations - snippets
    :   autocmd FileType php :iabbrev  <buffer> iff if () {<cr><cr>}<esc>kkf(a
    :   autocmd FileType php :iabbrev  <buffer> ife if () {<cr><cr>}<cr>else () {<cr><cr>}<esc>5kf(a
    :augroup END

    " JavaScript Files.
    :augroup javascriptFiles
    :   autocmd!
    :   autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
    :augroup END
    
    " Markdown Files.
    :augroup markdownFiles
    :   autocmd!
    :augroup END
:endif
