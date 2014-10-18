"ставим плагины и конфигурируем их
set nocompatible
filetype off " обязательно!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'morhetz/gruvbox'
"Plugin 'bling/vim-airline'
Plugin 'python.vim--Vasiliev'
"Plugin 'django.vim'
Plugin 'L9'
Plugin 'genutils'
"Plugin 'DfrankUtil' 
"Plugin 'vimprj'
"Plugin 'indexer.tar.gz'
filetype plugin indent on " обязательно!
call vundle#end()
" конфигурируем тему
set t_Co=256
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme gruvbox " solarized
"let g:airline_powerline_fonts = 1 " включаем патченные шрифты
"let g:airline#extensions#tabline#enabled = 1

" конфиг хоткеев
map! ii <Esc> " выхдоим из редактирования по ii
:let mapleader = "," " назначили лидер-кнопку на ,
" для табов
nmap <F3> :tabprevious<CR> " предыдущий таб
nmap <F4> :tabnext<CR> " слудующий таб
nmap <F12> :tabclose<CR> " закрыть таб
" для буферов
nmap <S-F3> :bp<CR> " предыдущий буфер
nmap <S-F4> :bn<CR> " следующий буфер
"для сплитов экрана
nmap <leader>w <C-w>v<C-w>l " разделили экрана на 2 части и переключились на новый сплит
nmap <C-h> <C-w>h " используя ctrl и hjkl можно переключиться в левый сплит
nmap <C-j> <C-w>j " в нижний сплит
nmap <C-k> <C-w>k " в верхний сплит
nmap <C-l> <C-w>l " а правый сплит
nmap <C-F12> <C-w>q " закрыть сплит
nmap <C-F3> <C-w>h " в левый сплит
nmap <C-F4> <C-w>l " в правый сплит

" конфиг индексатора
"let g:indexer_ctagsCommandLineOptions = "--python-kinds=-vi --fields=+iaS"

" конфиг для  nerdtree
nmap <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

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
syntax on
"set noshowmode
let python_highlight_all = 1 "Подсвечиваем все что можно подсвечивать
set noswapfile " не использовать своп-файл (в него скидываются открытые буферы)
set title " показывать имя буфера в заголовке терминала

" конфиг отступов
set tabstop=4 "= ts Размер табуляции (для питона)
set softtabstop=4 "=sts Ширина мягкого таба
set shiftwidth=4 "=sw Размер сдвига при нажатии на клавиши << и >>
set smarttab
set autoindent " Копирует отступ от предыдущей строки
set expandtab "= et Ставим табы пробелами
set smartindent " Включаем 'умную' автотабуляцию (автоотступ после {)

if has("autocmd") " Табуляция в в зависмости от типа файла 
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setl ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setl ts=4 sts=4 sw=4 noexpandtab
endif

" кофигурируем поиск
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
set imsearch=0 " при поиске по умолчанию латиница
set iminsert=0 " Раскладка по умолчанию - английская
set spelllang=en,ru " Орфография для этих языков
set encoding=utf-8 " Кодировка по умолчанию
set fileencodings=utf-8,cp1251,koi8-r,cp866 " Список кодировок файлов для автоопределения
set termencoding=utf-8
