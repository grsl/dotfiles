"--------------------------------------------------------------------------------------------
" Basic settings
"--------------------------------------------------------------------------------------------
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
    :nnoremap <localleader>M  execute :%s/\r//g " Remove ^M line endings.
    :nnoremap <localleader>ds :<c-u>execute ":%s/\\s\\+$//"<cr> " Remove extraneous white
                                                                  space from the end of lines

"--------------------------------------------------------------------------------------------
" Set Leaders.
"--------------------------------------------------------------------------------------------
    :let mapleader = ";"
    :let maplocalleader = ";"

"--------------------------------------------------------------------------------------------
" Status Line
"--------------------------------------------------------------------------------------------
    :set laststatus=2
    :set statusline=%-F\ \ 
    :set statusline+=Current:\ %-4l
    :set statusline+=Total\ %-4L

"--------------------------------------------------------------------------------------------
" Surround words with specific characters.
"--------------------------------------------------------------------------------------------
    " Insert mode.
    :inoremap <localleader>" <esc>bi"<esc>ea"
    :inoremap <localleader>' <esc>bi'<esc>ea'
    :inoremap <localleader>` <esc>bi`<esc>ea`
    
    " Normal mode.
    :nnoremap <localleader>" ciw""<esc>P
    :nnoremap <localleader>' ciw''<esc>P
    :nnoremap <localleader>` ciw``<esc>P

"--------------------------------------------------------------------------------------------
" Navigate Splits 
"--------------------------------------------------------------------------------------------
    :nnoremap <localleader>J <C-w>j
    :nnoremap <localleader>K <C-w>k
    :nnoremap <localleader>L <C-w>l
    :nnoremap <localleader>H <C-w>h
    :nnoremap <localleader>O <C-w>o

"--------------------------------------------------------------------------------------------
" Spell checking
"--------------------------------------------------------------------------------------------
    :setlocal spell spelllang=en_gb
    :nnoremap <localleader>s mm[s1z=`m
    :set nospell

"--------------------------------------------------------------------------------------------
" Tab settings.
"--------------------------------------------------------------------------------------------
    :set tabstop=4
    :set softtabstop=4
    :set expandtab
    :set shiftwidth=4
    :set autoindent

"--------------------------------------------------------------------------------------------
" Screen display.
"--------------------------------------------------------------------------------------------
    :set number
    :set numberwidth=3

"--------------------------------------------------------------------------------------------
" Folding.
"--------------------------------------------------------------------------------------------
    :set foldenable
    :set foldmethod=indent
    :set foldcolumn=3
    :set foldlevel=1
    :nnoremap <localleader>a zM " Close all folds.
    :nnoremap <localleader>s zR " Open all folds.
    :nnoremap <space> za        " Toggle the current fold.
    :set foldlevelstart=0

"--------------------------------------------------------------------------------------------
" Taken from Learn Vim script the Hard Way by Steve Losh
" Learn Vimscript The Hard Way
" http://learnvimscriptthehardway.stevelosh.com/
"--------------------------------------------------------------------------------------------
    "Upper-case a word in normal and insert modes.
    :nnoremap <localleader>U viwU
    :inoremap <localleader>U <esc>viwUi
    "Lower-case a word in normal and insert modes.
    :nnoremap <localleader><localleader>u viwu
    :inoremap <localleader><localleader>u <esc>viwui
    " Speed-up access to .vimrc
    :nnoremap <localleader>ev :vsplit $MYVIMRC<cr>
    :nnoremap <localleader>sv :source $MYVIMRC<cr>
    " Make space more useful.

    "
    :inoremap <localleader>{ {<cr>}<esc>O<tab>
    :inoremap <localleader>[ []<esc>F[a
    :inoremap <localleader>( ()<esc>F(a

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
    :iabbrev /h /*\r|/r*/
    :iabbrev ff <form></form>
    :iabbrev addr Plum Tree Cottage<cr>Goose Rye Road<cr>Worplesdon<cr>GU3 3RJ<cr><cr>


    :onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
    :onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>

"--------------------------------------------------------------------------------------------
" Autocommands.
"--------------------------------------------------------------------------------------------
    :if !exists("autocommands_loaded")
        :let autocommands_loaded = 1 

        " VimML Files.
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
        :   autocmd FileType html :inoremap <localleader>p <p></p><Esc>F<i
        :   autocmd FileType html :inoremap ;1 <h1></h1><Esc>F<i
        :   autocmd FileType html :inoremap ;2 <h2></h2><Esc>F<i
        :   autocmd FileType html :inoremap ;3 <h3></h3><Esc>F<i
        :   autocmd FileType html :inoremap div<tab> <div class=""><cr><cr></div><Esc>2kf"a
        :   autocmd FileType html :inoremap html<tab> <!DOCTYPE html><cr><cr><html><cr><cr><head><cr><cr><title></title><cr><cr></head><cr><cr><body><cr><cr></body><cr><cr></html>
        :   iabbrev FileType html <buffer> --- &mdash; 
        :augroup END

        " SQL Files
        :augroup sqlFiles
        :   autocmd!
        " Comment out lines
        :   autocmd FileType sql   :nnoremap <buffer> <localleader>c  I#<esc>
        :   autocmd FileType sql   :nnoremap <buffer> <localleader>pc {I/*<esc>}I//*/
        " :   autocmd FileType mysql :nnoremap <buffer> <localleader>c  I#<esc>
        " :   autocmd FileType mysql :nnoremap <buffer> <localleader>pc {I/*<esc>}I//*/

        " Comment out paragraph
        ":   autocmd FileType sql   :nnoremap <buffer> <localleader>bc {Oi/*<esc>}o*/
        " Uncomment lines
        :   autocmd FileType sql   :nnoremap <buffer> <localleader>uc Ix<esc>
        " :   autocmd FileType mysql :nnoremap <buffer> <localleader>uc Ix<esc>
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
        :   autocmd FileType md :nnoremap <buffer> <localleader>1<space> I#
        :augroup END
    :endif

"--------------------------------------------------------------------------------------------
" Taken from George Ornbo's blog at http://www.shapeshed.com/  
"--------------------------------------------------------------------------------------------
    :if has("autocmd")
        augroup templates
            autocmd BufNewFile *.html 0r ~/.vim/templates/skeleton.html
            autocmd BufNewFile *.php 0r ~/.vim/templates/skeleton.php
            autocmd BufNewFile *.sql 0r ~/.vim/templates/skeleton.sql
        augroup END
    endif

"--------------------------------------------------------------------------------------------
" Netrw.
"--------------------------------------------------------------------------------------------
    let g:netrw_banner = 0
    let g:netrw_liststyle = 0
    let g:netrw_browse_split = 4
    let g:netrw_altv = 1
    let g:netrw_winsize = 25
