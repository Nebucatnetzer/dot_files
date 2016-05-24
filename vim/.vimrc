" Settings related to the UI
syntax on " enable syntax highlighting
set number " enable line numbers
set cursorline " highlight the current line
set wildmenu " visual autocomplete for command menu
set background=dark " enables the dark background in themes
set showmatch " highlight matching [{()}]
au BufNewFile,BufFilePre,BufRead *.txt set filetype=markdown " enables markdown syntax highlighting for .txt files

" Settings related to tabs and intentation
set tabstop=4 " number of visual spaces per TAB
set expandtab " tabs are spaces
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 " intend code by 4 spaces
filetype indent on " indent based on the file ending
set autoindent " automatically indent if previous line was indent
set smartindent " indent based on the code syntax

"Shows a red line with a width of 80 characters
set colorcolumn=80

"General Settings
set viminfo= "stops vim from spamming my home folder with tons of viminfo files

" Custom Key Shortcuts
map <Enter> o<ESC>
map <S-Enter> O<ESC>
