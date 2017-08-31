set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
filetype plugin on

" 貼上模式
set pastetoggle=<F1>

"自動縮排
set ai

"顯示行號
set number

"設定backspace
set backspace=2

"自動換行
set wrap

"顯示目前所在行
set cursorline

"vim theme
colorscheme Tomorrow-Night-Bright
"colorscheme molokai
"colorscheme monokai

set t_Co=256

"設定編碼
set enc=utf8

"程式碼highlight
syntax on

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

"YCM自動關閉preview window
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
