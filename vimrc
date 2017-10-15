" Set Leaders.
    :let mapleader = ","
    :let maplocalleader = "\\"

" Use jk instead of the <ESC> key to exit insert mode.
    :inoremap jk <esc>


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
" set foldmethod=marker
    :set foldmethod=indent
    :set foldlevel=1
    :set nofoldenable

" Insert HTML
    :inoremap <F1> <form name="" action="" method="POST" enctype=""><CR><LF></form>

" Learn Vimscript the Hard Way
    " Uppercase a word in normal and insert modes.
        :nnoremap <leader>Q viwU
        :inoremap <leader>Q <esc>viwUi
    " Lowercase a word in normal and insert modes.
        :nnoremap <leader>q viwu
        :inoremap <leader>q <esc>viwui
    " Speedup access to .vimrc
        :nnoremap <leader>ev :vsplit $MYVIMRC<cr>
        :nnoremap <leader>sv :source  $MYVIMRC<cr>
    " Make space more useful.
        :nnoremap <space> za

" Abbreviations
:iabbrev adn and
:iabbrev waht what
:iabbrev tehn then
:iabbrev @@ grslong@gmail.com
:iabbrev ccopy Copyright 2017 Simon Long, all rights reserved.
:iabbrev ssig -----------------<cr>Simon Long<cr>grslong@gmail.com<cr>-----------------
:iabbrev wweb www.grsl.co.uk
