syntax on
set number
set modeline
set background=dark
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent on
set autoindent
set smartindent
set foldmethod=indent
set foldlevel=99
" show a visual line under the cursor's current line
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
set virtualedit=onemore
set viminfo=
au BufNewFile,BufFilePre,BufRead *.txt set filetype=markdown
