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
set nolazyredraw
set magic
set hidden
set showcmd
set noshowmode
set title
set showmatch
set foldmethod=syntax " fold based on indent
set foldlevelstart=99
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1
set encoding=UTF-8

" Keyboard Shortcuts
map <C-b> :NERDTreeToggle<CR>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let mapleader = ','
inoremap jk <esc>
nmap <leader>, :w<cr>
noremap <space> :set hlsearch! hlsearch?<cr>

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
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-commentary'   " gcc to comment a line or gc to selection in VI mode
Plugin 'tpope/vim-surround'     " cs to surround ds to delete, also ysiw]
Plugin 'tpope/vim-endwise'      " add end endif etc. automatically
Plugin 'junegunn/goyo.vim'      " Distraction free edit with :Goyo
Plugin 'ryanoasis/vim-devicons' " Add filetype icons
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Xuyuanp/nerdtree-syntax-highlighting'
Plugin  'mhinz/vim-signify'

call vundle#end()            " required
filetype plugin indent on    " required

let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let NERDTreeDirArrowExpandable = "\u00a0" " make arrows invisible
let NERDTreeDirArrowCollapsible = "\u00a0" " make arrows invisible
let NERDTreeNodeDelimiter = "\u263a" " smiley face

     let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
\ }

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
