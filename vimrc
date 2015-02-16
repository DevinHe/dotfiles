set encoding=utf-8
set nocompatible " be iMproved, required

"---------------Begin of Setting Vundle---------------
filetype off     " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are plugins of different formats supported.
" Keep Plugin commands between vundle#begin/end
"------------------------------
" plugin on GitHub repo
"------------------------------
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Lokaltog/vim-powerline'
Plugin 'godlygeek/tabular'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/Visual-Mark'
Plugin 'vim-scripts/taglist.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'jshint/jshint'
Plugin 'Valloric/YouCompleteMe'
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'kchmck/vim-coffee-script'
"------------------------------
" plugin from http://vim-scripts.org/vim/scripts.html
"------------------------------
"Plugin 'L9'
"------------------------------
" Git plugin not hosted on Github
"------------------------------
"Plugin 'git://git.wincent.com/command-t.git'
"------------------------------
" git repos on your local machine (i.e. when working on your own plugin)
"------------------------------
" Plugin 'file:///home/gmarik/path/to/plugin'
"------------------------------
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"------------------------------
"Plugin "rstacruz/sparkup', {'rtp': 'vim/'}
"------------------------------
" Avoid a name conflict with L9
"------------------------------
"Plugin 'user/L9', {'name': 'newL9'}
"------------------------------
" All of your Plugins must be added before the following line
call vundle#end() "required
filetype plugin indent on "required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"---------------End of Setting Vundle---------------

filetype on "reopen the filetype for use
set t_RV=
syntax on
filetype indent on
set nobackup
set novisualbell
set visualbell t_vb=
set ruler
set nu rnu
set showcmd
set showmode
set scrolloff=10
set backspace=indent,eol,start
set showmatch
set matchtime=1
set hlsearch
set incsearch
set ignorecase
set smartcase
set expandtab
set smarttab
set autoindent
set smartindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set list listchars=eol:¬,tab:▸\ ,trail:.,
set background=dark
set history=200

"Key Map
:map Y y$
let mapleader=","

" choose theme
set t_Co=256
colorscheme smyck

" Make comments and special characters look better
highlight Comment    ctermfg=245 guifg=#8a8a8a
highlight NonText    ctermfg=240 guifg=#585858
highlight SpecialKey ctermfg=240 guifg=#585858

"Set Filetype *.html.erb = *.html.eruby
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby

"---------- Begin of setting plugin ---------- 
" taglist
let Tlist_Use_Left_Window = 1
let Tlist_WinWidth = 50
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow =1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags' 
nnoremap <F4> :Tlist<CR>


" powerline
let g:Powerline_symbols = 'unicode'
set guifont=PowerlineSymbols\ for\ Powerline
set laststatus=2

" nerdtree
nnoremap <F1> :NERDTreeToggle<CR>

" ctrlsf
set grepprg=ag " Use ag instead of grep
nnoremap<F3> :CtrlSF<space>

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"

" YouCompleteMe
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"---------- End of setting plugin ---------- 

"---------- Setting for project ----------
" ctags
" fix E433:No tags file
" 这样定义后，只要在项目目录下的任何文件都能找到tags
au BufEnter ~/tophold/tophold-web/* setlocal tags+=~/tophold/tophold-web/.git/tags
au BufEnter ~/tophold/tophold-bjobs/* setlocal tags+=~/tophold/tophold-bjobs/.git/tags
au BufEnter ~/tophold/tophold-engine/* setlocal tags+=~/tophold/tophold-engine/.git/tags
