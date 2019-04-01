set nocompatible              " be iMproved, required
filetype off   " required
set hlsearch
set ignorecase
set number
set incsearch
set history=1000
set ruler
set showcmd
set wildmenu
set scrolloff=5
set smartcase
set backup
set ai
set lbr
set si
set clipboard=unnamedplus
set wildmode=longest,list,full
set t_CO=256
set autowriteall
syntax on
color muon

" Keyboard Shortcuts
map <C-b> :NERDTreeToggle<CR>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let mapleader = ','

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put yo non-Plugin stuff after this line
