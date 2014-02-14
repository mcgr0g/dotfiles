"ставим плагины и конфигурируем их
set nocompatible
filetype off " обязательно!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'L9'
Bundle 'genutils' 
Bundle 'SelectBuf'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdcommenter'
filetype plugin indent on " обязательно!

" конфигурируем тему
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
set background=dark

" конфигурируем переход по файлам
nmap <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

nmap <Leader>f :FufFile **/<cr>

" конфиг отступов
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

" конфиг для ускоренного доступа
map! ii <Esc>  
:let mapleader = "," " назначили лидер-кнопку на ,

" когфиг для табов
nmap <leader>w <C-w>v<C-w>l " разделили экрана на 2 части и перекючились на новый таб
nmap <C-h> <C-w>h " используя ctrl и hjkl можно переключиться в левый таб
nmap <C-j> <C-w>j " в верхний таб
nmap <C-k> <C-w>k " в нижний таб
nmap <C-l> <C-w>l " а правый таб

" базовый конфиг
syntax enable
set number
set iminsert=0 " латиница при поиске по умолчанию
set is " игнорировать регистр при поиске
set hls "подсвечивать поиск
set linebreak " перенос по словам а не по буквам
set dy=lastline
set laststatus=2 " Always show the statusline
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

