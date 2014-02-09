set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
syntax on
set number
set iminsert=0 "латиница при поиске по умолчанию
set is "игнорировать регистр при поиске
set hls "подсвечивать поиск
set linebreak "перенос по словам а не по буквам
set dy=lastline
map! ii <Esc> " map ii to Esc
map! ;; <Esc> " map ;; to Esc

set nocompatible
filetype off " обязательно!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on " обязательно!

Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
syntax enable
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

Bundle 'scrooloose/nerdtree'
silent! map <F2> :NERDTreeToggle<CR> " открваем/закрываем по F2
let g:NERDTreeMapPreview="<F3>" " просматриваем выбранный файл

