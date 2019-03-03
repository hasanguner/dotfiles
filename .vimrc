set nocompatible
set encoding=utf-8
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Bundle 'takac/vim-hardtime'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'udalov/kotlin-vim'
call vundle#end()

syntax on
filetype plugin indent on
set backspace=2
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set number relativenumber
set clipboard=unnamed

let g:onedark_termcolors=256
let g:airline_theme = 'onedark'
let g:material_terminal_italics = 1
let g:airline_powerline_fonts=1

colorscheme default
highlight LineNr ctermfg=grey

"Hard Time
let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []

"NERDTree
map <C-n> :NERDTreeToggle<CR>

