
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'zxqfl/tabnine-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'sentientmachine/Pretty-Vim-Python'
Plugin 'sakshamgupta05/vim-todo-highlight'
" All of your Plugins must be added before the following line

call vundle#end()
filetype plugin indent on
filetype plugin on

set nofoldenable

"自動縮排
set ai
set cindent

"顯示行號
set number

set tabstop=2
set expandtab
set shiftwidth=2

"設定backspace
set backspace=2

"自動換行
set wrap

"顯示目前所在行
set cursorline

"vim theme
"colorscheme monokai
colorscheme monokai-soda
highlight Comment cterm=bold

set t_Co=256

"設定編碼
set enc=utf8

"程式碼highlight
syntax on
let python_highlight_all=1

"clipboard 設定
set clipboard=unnamed

"「下上」換成「上下」
noremap j k
noremap k j
" F8 開啟Tagbar
nmap <F8> :TagbarToggle<CR>

"開啟vim時自動開啟NERDTree
"autocmd vimenter * NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

"設定NERDTree寬度
let g:NERDTreeWinSize=20

"NERDTree顯示隱藏檔案
let NERDTreeShowHidden=1
