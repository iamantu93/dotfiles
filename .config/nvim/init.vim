set nocompatible              " be iMproved, required
filetype off   " required
set hlsearch
set ignorecase
set incsearch
set history=1000
set ruler
set relativenumber
set number
set showcmd
set wildmenu
set scrolloff=5
set smartcase
set nobackup
set ai
set lbr
set si
set clipboard+=unnamedplus
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
let mapleader = ','
inoremap ,, <esc>
nmap <leader>, :w<cr>
noremap <space> :set hlsearch! hlsearch?<cr>
noremap <F3> :Autoformat<CR>

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'kien/ctrlp.vim'                      " Fuzzy searching of files using ctrl+p
Plugin 'scrooloose/nerdtree'                 " The file browser tree
Plugin 'vim-airline/vim-airline'             " The statusline below
Plugin 'mattn/emmet-vim'                     " Emmet Trigger ctrl+y+;
Plugin 'flazz/vim-colorschemes'              " Color Schemes
Plugin 'scrooloose/syntastic'                " Code linting. Linter must be installed like php,pylint,jshint
Plugin 'jiangmiao/auto-pairs'                " Auto pairs of quotes or {} etc
Plugin 'tpope/vim-commentary'                " gcc to comment a line or gc to selection in VI mode
Plugin 'tpope/vim-surround'                  " cs to surround ds to delete, also ysiw]
Plugin 'tpope/vim-endwise'                   " add end endif etc. automatically
Plugin 'junegunn/goyo.vim'                   " Distraction free edit with :Goyo
Plugin 'ryanoasis/vim-devicons'              " Add filetype icons
Plugin 'Xuyuanp/nerdtree-git-plugin'         " NerdTree enhancements
Plugin  'mhinz/vim-signify'
Plugin 'Chiel92/vim-autoformat'

call vundle#end()            " required
filetype plugin indent on    " required

 " au BufWrite * :Autoformat  " Automatically format docmument upon saving. Common formatter eslint, autopep8, js-beautify, tidy, remark-cli, rustfmt
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

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
