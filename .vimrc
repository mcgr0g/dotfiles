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
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'bling/vim-airline'
filetype plugin indent on " обязательно!

" конфиг хоткеев
map! ii <Esc>  " выхдоим из редактирования по ii
:let mapleader = "," " назначили лидер-кнопку на ,

" конфигурируем тему
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
set background=dark

" конфиг отображения
set textwidth=80 " норм ширина это 80
set colorcolumn=+1 " а 81 символ подкрашиваем
highlight ColorColumn ctermbg=DarkGrey
set cursorline " выделяем строку с курсором
set showcmd " отображение выполняемой команды
set laststatus=2 " Always show the statusline
set visualbell " не пищим
set linebreak " перенос по словам а не по буквам
set dy=lastline
set number
syntax enable
let g:airline_powerline_fonts = 1 " включаем патченные шрифты
"set noshowmode
let python_highlight_all = 1 "Подсвечиваем все что можно подсвечивать

" конфигурируем переход по файлам
nmap <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
nmap <Leader>f :FufFile **/<cr>

" конфиг отступов
set tabstop=8 " Размер табуляции
set softtabstop=4
set shiftwidth=4 " Размер сдвига при нажатии на клавиши << и >>
set smarttab
set autoindent " Копирует отступ от предыдущей строки
set expandtab " Ставим табы пробелами
set smartindent " Включаем 'умную' автоматическую расстановку отступов

" когфиг для сплитов экрана
nmap <leader>w <C-w>v<C-w>l " разделили экрана на 2 части и перекючились на новый таб
nmap <C-h> <C-w>h " используя ctrl и hjkl можно переключиться в левый таб
nmap <C-j> <C-w>j " в верхний таб
nmap <C-k> <C-w>k " в нижний таб
nmap <C-l> <C-w>l " а правый таб

" кофигурируем поиск
set iminsert=0 " латиница при поиске по умолчанию
set ic " игнорировать регистр при поиске
set is " использовать инкрементальный поиск
set hls "подсвечивать слова при поиске

" конфиг для редактирования
set backspace=indent,eol,start " Allow backspace to remove indents, newlines and old text

" конфиг кодировок и языка
set langmenu=none " Always use english menu
set keymap=russian-jcukenwin " переключение раскладок клавиатуры по <C-^>
set iminsert=0 " Раскладка по умолчанию - английская
set imsearch=-1 " Чтобы дефолтная раскладка была и в режиме поиска
set spelllang=en,ru " Languages
set encoding=utf-8 " Default encoding
set fileencodings=utf-8,cp1251,koi8-r,cp866 " Список кодировок файлов для автоопределения
set termencoding=utf-8
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
