"自動縮排
set ai

"顯示行號
set number

"設定tab
set tabstop=4
set shiftwidth=4

"自動換行
set wrap

"顯示目前所在行
set cursorline

"vim theme
colorscheme Tomorrow-Night-Bright
set t_Co=256

"設定編碼
set enc=utf8

"程式碼highlight
syntax on

execute pathogen#infect()
call pathogen#helptags()

"開啟vim時自動開啟NERDTree
autocmd vimenter * NERDTree

"設定NERDTree寬度
let g:NERDTreeWinSize=25
