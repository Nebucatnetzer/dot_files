"""" Vundle Plugin

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" You complete me plugin
Plugin 'Valloric/YouCompleteMe'

" Code folding plugin
Plugin 'tmhedberg/SimpylFold'

" Python indendation
Plugin 'vim-scripts/indentpython.vim'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

"""" End of Vundle Plugin


""" You complete me settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

""" Settings related to the UI
syntax on " enable syntax highlighting
set number " enable line numbers
set cursorline " highlight the current line
set wildmenu " visual autocomplete for command menu
set background=dark " enables the dark background in themes
set showmatch " highlight matching [{()}]

" enables markdown syntax highlighting for .txt files
au BufNewFile,BufFilePre,BufRead *.txt set filetype=markdown

"Shows a red line with a width of 80 characters
set colorcolumn=80
"Wrap text after 80 characters
set textwidth=80
"Autowrap text with textwidh (t) and only insert a comment leader when pressing 
"o or O (o)
set formatoptions=to 

" Custom Key Shortcuts
map <Enter> o<ESC>
map <S-Enter> O<ESC>

""" Python Settings

" Enable code folding
set foldmethod=indent
set foldlevel=99
" Remap code folding to space
nnoremap <space> za

"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
" Marking white space
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" enable UTF8
set encoding=utf-8

" Settings related to tabs and intentation
set tabstop=4 " number of visual spaces per TAB
set expandtab " tabs are spaces
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 " intend code by 4 spaces
filetype indent on " indent based on the file ending
set autoindent " automatically indent if previous line was indent
set smartindent " indent based on the code syntax

""" General Settings

"stops vim from spamming my home folder with tons of viminfo files
set viminfo= 
