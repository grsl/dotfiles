" Set Leaders.
    :let mapleader=";"
    :let maplocalleader=";"

" Use jk instead of the <ESC> key to exit insert mode.
    :inoremap jk <esc>

" Spellchecking
:setlocal spell spelllang=en_gb
:nnoremap <leader>s mm[s1z=`m

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
    :set lazyredraw
    :set showmatch

" Folding.
    :set foldmethod=indent
    :set foldlevel=1
    :set foldenable

" Insert HTML
    :inoremap <F1> <form name="" action="" method="POST" enctype=""><CR><LF></form>

" Learn Vim script the Hard Way
    "Upper-case a word in normal and insert modes.
        :nnoremap <leader><leader>U viwU
        :inoremap <leader><leader>U <esc>viwUi
    "Lower-case a word in normal and insert modes.
        :nnoremap <leader><leader>u viwu
        :inoremap <leader><leader>u <esc>viwui
    " Speed-up access to .vimrc
        :nnoremap <leader>ev :vsplit $MYVIMRC<cr>
        :nnoremap <leader>sv :source  $MYVIMRC<cr>
    " Make space more useful.
        :nnoremap <space> za

" Abbreviations
:iabbrev adn and
:iabbrev waht what
:iabbrev tehn then
:iabbrev teh the
:iabbrev @@ grslong@gmail.com
:iabbrev ccopy Copyright 2017 Simon Long, all rights reserved.
:iabbrev ssig -----------------<cr>Simon Long<cr>grslong@gmail.com<cr>-----------------
:iabbrev wweb www.grsl.co.uk


:autocmd FileType sql nnoremap <buffer> <localleader>c I#<esc>
:autocmd FileType php nnoremap <buffer> <localleader>c I//<esc>
:autocmd FileType php nnoremap <buffer> <localleader>cc I/*<cr>*/<esc>kh

:inoremap {<cr> {<cr>}<esc>O<tab>
:inoremap [<cr> [<cr>]<esc>O<tab>
:inoremap (<cr> (<cr>)<esc>O<tab>

