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
Bundle 'jszakmeister/vim-togglecursor'
filetype plugin indent on " обязательно!

" конфигурируем тему
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
set background=dark

" конфиг для потрохов
set textwidth=80 " норм ширина это 80
set colorcolumn=+1 " а 81 символ подкрашиваем
highlight ColorColumn ctermbg=DarkGrey
set cursorline " выделяем строку с курсором  

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
set ic " игнорировать регистр при поиске
set is " использовать инкрементальный поиск
set textwidth=79
set hls "подсвечивать поиск
set linebreak " перенос по словам а не по буквам
set dy=lastline
set laststatus=2 " Always show the statusline
set showcmd " отображение выполняемой команды
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

