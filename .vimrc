"-------------------------------------------------------------------------
"
" Simon Long's .vimrc file.
"
"-------------------------------------------------------------------------

"-------------------------------------------------------------------------
" Include Pathogen by Tim Pope.
"-------------------------------------------------------------------------
execute pathogen#infect()

"------------------------------------------------------------------------
" Basic settings
"-------------------------------------------------------------------------
    :set nocompatible
    :filetype plugin on
    :set path+=**
    :set wildmenu
    :set wrap
    :set magic
    :set backspace=2   "
    :set autowrite     " Automatically :write before running commands.
    :set ruler         " Show the cursor position at all times.
    :inoremap jk <esc> " Use jk instead of the <ESC> key to exit insert mode.

    " Stop the arrow keys from working to break the habit of using them.
        :noremap <Up> <NOP>
        :noremap <Down> <NOP>
        :noremap <Left> <NOP>
        :noremap <Right> <NOP>
        :syntax enable      " Turn on Syntax Highlighting.

"-------------------------------------------------------------------------
" Set Leaders.
"-------------------------------------------------------------------------
    :let mapleader = ";"
    :let maplocalleader = ";"

"-------------------------------------------------------------------------
" Status Line
"-------------------------------------------------------------------------
    :set laststatus=2
    :set statusline=%-F\ \
    :set statusline+=Current:\ %-4l "Currint line.
    :set statusline+=Total\ %-4L    " Total number of lines.

"-------------------------------------------------------------------------
" Surround words with specific characters.
"-------------------------------------------------------------------------
    " Insert mode.
        :inoremap <leader>" <esc>bi"<esc>ea"
        :inoremap <leader>' <esc>bi'<esc>ea'
        :inoremap <leader>` <esc>bi`<esc>ea`
    " Normal mode.
        :nnoremap <leader>" ciw""<esc>P
        :nnoremap <leader>' ciw''<esc>P
        :nnoremap <leader>` ciw``<esc>P
    " Remove extraneous white space from the end of lines.
        :nnoremap <leader>M ma:%s/\s\+$//<cr>'a

    " Visual mode.

"-------------------------------------------------------------------------
" Navigate Splits
"-------------------------------------------------------------------------
    :nnoremap <leader>j <C-w>j
    :nnoremap <leader>k <C-w>k
    :nnoremap <leader>l <C-w>l
    :nnoremap <leader>h <C-w>h
    :nnoremap <leader>o <C-w>o

"-------------------------------------------------------------------------
" Spell checking
"-------------------------------------------------------------------------
    :setlocal spell spelllang=en_gb
    :nnoremap <leader>s mm[s1z=`m
    :set nospell

"-------------------------------------------------------------------------
" Tab settings.
"-------------------------------------------------------------------------
    :set tabstop=4
    :set softtabstop=4
    :set expandtab
    :set shiftwidth=4
    :set autoindent

"-------------------------------------------------------------------------
" Screen display.
"-------------------------------------------------------------------------
    :set number
    :set numberwidth=4

"-------------------------------------------------------------------------
" Folding.
"-------------------------------------------------------------------------
    :set foldenable
    :set foldmethod=indent
    :set foldcolumn=3
    :set foldlevel=1
    :nnoremap <leader>a zM " Close all folds.
    :nnoremap <leader>s zR " Open all folds.
    :nnoremap <space> za   " Toggle the current fold.
    :set foldlevelstart=0

"-------------------------------------------------------------------------
" Taken from Learn Vim script the Hard Way by Steve Losh
" Learn Vimscript The Hard Way
" http://learnvimscriptthehardway.stevelosh.com/
"-------------------------------------------------------------------------
    "Upper-case a word in normal and insert modes.
    :nnoremap <leader>U viwU
    :inoremap <leader>U <esc>viwUi
    "Lower-case a word in normal and insert modes.
    :nnoremap <leader>u viwu
    :inoremap <leader>u <esc>viwui
    " Speed-up access to .vimrc
    :nnoremap <leader>ev :vsplit $MYVIMRC<cr>
    :nnoremap <leader>sv :source $MYVIMRC<cr>

    "
    :inoremap <leader>{ {<cr>}<esc>O<tab>
    :inoremap <leader>[ []<esc>F[a
    :inoremap <leader>( ()<esc>F(a

    :nnoremap <c-w>o <c-o>
    :nnoremap - ddp
    :nnoremap + ddkP

    " Window Movements.
    :nnoremap <leader>j <c-w>j
    :nnoremap <leader>k <c-w>k
    :nnoremap <leader>l <c-w>l
    :nnoremap <leader>h <c-w>h

    :nnoremap <leader>g :grep -R <cword> .<cr>

    " Abbreviations
    :iabbrev adn and
    :iabbrev waht what
    :iabbrev soem some
    :iabbrev tehn then
    :iabbrev teh the
    :iabbrev hte the
    :iabbrev ccopy Copyright 2017 Simon Long, all rights reserved.
    :iabbrev /h /*\r|/r*/
    :iabbrev ff <form></form>

    :onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
    :onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>

"-------------------------------------------------------------------------
" Autocommands.
"-------------------------------------------------------------------------
    :if !exists("autocommands_loaded")
    :let autocommands_loaded = 1

    " VimML Files.
    :augroup vimFiles
    :   autocmd!
    :   autocmd FileType vim :nnoremap <buffer> <leader>c mzI"<space><esc>`z
    :   autocmd FileType vim :inoremap <buffer> <leader>c <esc>I"<space>i
    :augroup END

    " HTML Files.
    :augroup htmlFiles
    :   autocmd!
    :   autocmd FileType html :nnoremap <buffer> " &ldquo;
    :   autocmd FileType html :nnoremap <buffer> " &rdquo;
    :   autocmd FileType html :inoremap <leader>p <p></p><Esc>F<i
    :   autocmd FileType html :inoremap <leader>1 <h1></h1><Esc>F<i
    :   autocmd FileType html :inoremap <leader>2 <h2></h2><Esc>F<i
    :   autocmd FileType html :inoremap <leader>3 <h3></h3><Esc>F<i
    :   autocmd FileType html :inoremap div<tab> <div class=""><cr><cr></div><Esc>2kf"a
    :   autocmd FileType html :inoremap html<tab> <!DOCTYPE html><cr><cr><html><cr><cr><head><cr><cr><title></title><cr><cr></head><cr><cr><body><cr><cr></body><cr><cr></html>
    :   iabbrev FileType html <buffer> --- &mdash;
    :augroup END

    " SQL Files
    :augroup sqlFiles
    :   autocmd!
        " Comment out lines
        :autocmd FileType sql   :nnoremap <buffer> <leader>c  I#<esc>
        :autocmd FileType sql   :nnoremap <buffer> <leader>pc {I/*<esc>}I//*/

        " Comment out paragraph
        :autocmd FileType sql   :nnoremap <buffer> <leader>bc {Oi/*<esc>}o*/
        " Uncomment lines
        :autocmd FileType sql   :nnoremap <buffer> <leader>uc Ix<esc>
        " :   autocmd FileType mysql :nnoremap <buffer> <leader>uc Ix<esc>
    :augroup END

    " PHP Files
    :augroup phpFiles
    :   autocmd!
    "   Comment out lines
    :   autocmd FileType php :nnoremap <buffer> <leader>c I//<esc><space>
    :   autocmd FileType php :nnoremap <buffer> <leader>cc I/*<cr><cr>//*/<esc>k<tab>i
    :   autocmd FileType php :nnoremap <buffer> <leader>cp I/*<cr><cr>//*/<esc>k<tab>i
    " Uncomment lines
    :   autocmd FileType php :nnoremap <buffer> <leader>uc Ix<esc>
    :   autocmd FileType vim :nnoremap <buffer> <leader>uc I" <esc>
    "   Abbreviations - snippets
    :   autocmd FileType php :iabbrev  <buffer> iff if () {<cr><cr>}<esc>kkf(a
    :   autocmd FileType php :iabbrev  <buffer> ife if () {<cr><cr>}<cr>else () {<cr><cr>}<esc>5kf(a
    " Insert HTML Headers
    :   autocmd FileType html :inoremap p<tab> <p></p><Esc>F<i
    :   autocmd FileType html :inoremap 1<tab> <h1></h1><Esc>F<i
    :augroup END

    " JavaScript Files.
    :augroup javascriptFiles
    :   autocmd!
    :   autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
    :augroup END

    " Markdown Files.
    :augroup markdownFiles
    :   autocmd!
    :   autocmd FileType md :nnoremap <buffer> <leader>1<space> I#
    :augroup END
    :endif

"-------------------------------------------------------------------------
" Taken from George Ornbo's blog at http://www.shapeshed.com/
"-------------------------------------------------------------------------
    :augroup templates
        :autocmd!
        :autocmd BufNewFile *.html 0r ~/.vim/templates/skeleton.html
        :autocmd BufNewFile *.php  0r ~/.vim/templates/skeleton.php
        :autocmd BufNewFile *.sql  0r ~/.vim/templates/skeleton.sql
    :augroup END

"-------------------------------------------------------------------------
" Netrw.
"-------------------------------------------------------------------------
    " let g:netrw_banner = 0
    " let g:netrw_liststyle = 0
    " let g:netrw_browse_split = 4
    " let g:netrw_altv = 1
    " let g:netrw_winsize = 25
