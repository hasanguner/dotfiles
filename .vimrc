set nocompatible
set encoding=utf-8
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Bundle 'takac/vim-hardtime'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'udalov/kotlin-vim'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'elzr/vim-json', {'for' : 'json'}
Plugin 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}
Bundle 'sonph/onehalf', {'rtp': 'vim/'}
call vundle#end()

syntax on
filetype plugin indent on
set autoindent
set autoread
set backspace=2
set ttyfast
set showcmd
set number relativenumber
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set clipboard=unnamed
set scrolloff=3
set history=10000

"Map command line window to quit
map q: :q

"Configure completion menu
set completeopt=longest,menuone
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"No bell
set belloff=all

"No backup/swap
set noswapfile
set nobackup

"Improve searchs
set ignorecase
set smartcase
set incsearch
set hlsearch
"Unsets the search highlight by hitting enter
nnoremap <CR> :noh<CR>

"More natural split opening
set splitbelow
set splitright

"Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
colorscheme default
if (empty($TMUX))
  if (has("termguicolors"))
    set termguicolors
  endif
  colorscheme onehalfdark
endif
let g:airline_theme = 'onedark'
let g:material_terminal_italics = 1
let g:airline_powerline_fonts=1
highlight LineNr ctermfg=grey

"Hard Time
let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []

"NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


