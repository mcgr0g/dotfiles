"ставим плагины и конфигурируем их
set nocompatible
filetype off " обязательно!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jszakmeister/vim-togglecursor'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'bling/vim-airline'
Bundle 'L9'
Bundle 'genutils' 
filetype plugin indent on " обязательно!

" конфигурируем переход по файлам
nmap <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" конфигурируем тему
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
set background=dark
let g:airline_powerline_fonts = 1 " включаем патченные шрифты
let g:airline#extensions#tabline#enabled = 1

" конфиг хоткеев
map! ii <Esc>  " выхдоим из редактирования по ii
:let mapleader = "," " назначили лидер-кнопку на ,
map  <F3>:tabnext<CR> " слудующий таб
map  <F4>:tabprevious<CR> " предыдущий таб

" когфиг для сплитов экрана
nmap <leader>w <C-w>v<C-w>l " разделили экрана на 2 части и перекючились на новый сплит
nmap <C-h> <C-w>h " используя ctrl и hjkl можно переключиться в левый сплит
nmap <C-j> <C-w>j " в верхний сплит
nmap <C-k> <C-w>k " в нижний сплит
nmap <C-l> <C-w>l " а правый сплит

" конфиг для редактирования
set backspace=indent,eol,start " Allow backspace to remove indents, newlines and old text
set showmatch " показывать первую парную скобку после ввода второй
set matchpairs+=<:> " показывать совпадающие скобки для HTML-тегов
set clipboard=unnamed " во избежание лишней путаницы использовать системный буфер обмена вместо буфера Vim

" конфиг отображения
set textwidth=80 " норм ширина это 80
set colorcolumn=+1 " а 81 символ подкрашиваем
highlight ColorColumn ctermbg=DarkGrey
set cursorline " выделяем строку с курсором
set showcmd " отображение выполняемой команды
set laststatus=2 " Всегда показываем статус-линию
set visualbell " не пищим, а мигаем
set linebreak " перенос по словам а не по буквам
set dy=lastline
set guifont=courier_new:h10:cRUSSIAN
set number " Нумерация строк, для отключения set nonu
syntax enable
"set noshowmode
let python_highlight_all = 1 "Подсвечиваем все что можно подсвечивать
set noswapfile " не использовать своп-файл (в него скидываются открытые буферы)
set title " показывать имя буфера в заголовке терминала

" конфиг отступов
set tabstop=4 " Размер табуляции (для питона)
set softtabstop=4 " Ширина мягкого таба
set shiftwidth=4 " Размер сдвига при нажатии на клавиши << и >>
set smarttab
set autoindent " Копирует отступ от предыдущей строки
set expandtab " Ставим табы пробелами
set smartindent " Включаем 'умную' автотабуляцию (автоотступ после {)


" кофигурируем поиск
set imsearch=0 " при поиске по умолчанию латиница
set smartcase " искомое выражение содержит символы в верхнем регистре -> ищет с учётом регистра, иначе - без учёта
set ic " игнорировать регистр при поиске
set is " использовать инкрементальный поиск
set hls "подсвечивать слова при поиске
" поиск выделенного текста (начинать искать фрагмент при его выделении)
vnoremap <silent>* <ESC>:call VisualSearch()<CR>/<C-R>/<CR>
vnoremap <silent># <ESC>:call VisualSearch()<CR>?<C-R>/<CR>

" конфиг кодировок и языка
let $LANG = 'en'
set langmenu=none " Всегда использовать английское меню
set keymap=russian-jcukenwin " переключение раскладок клавиатуры по <C-^>
set iminsert=0 " Раскладка по умолчанию - английская
set spelllang=en,ru " Орфография для этих языков
set encoding=utf-8 " Кодировка по умолчанию
set fileencodings=utf-8,cp1251,koi8-r,cp866 " Список кодировок файлов для автоопределения
set termencoding=utf-8
