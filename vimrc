" Use jk instead of the <ESC> key to exit insert mode. {{{
:inoremap jk <esc>
"}}}


" Stop the arrow keys from working to break the habit of using them. {{{
:noremap <Up> <NOP>
:noremap <Down> <NOP>
:noremap <Left> <NOP>
:noremap <Right> <NOP>
"}}}

" Turn on syntax Highlighting. {{{
:syntax enable
"}}}


" Tab settings. {{{
:set tabstop=4
:set softtabstop=4
:set expandtab
:set shiftwidth=4
:set autoindent
"}}}

" Screen display {{{
:set number
:set lazyredraw
:set showmatch
"}}}

" Folding. {{{
" set foldmethod=marker
:set foldmethod=indent
:set foldlevel=1
:set nofoldenable
"}}}

:inoremap <F1> <form name="" action="" method="POST" enctype=""><CR><LF></form>
