" System Setting
set shortmess+=I                  " skip init screen
set clipboard=unnamed,autoselect  " use clipboard for yunk etc...
set noswapfile
set backspace=start,eol,indent    " use backspace to erase
set virtualedit=block
set paste                         " invalid autoindent for pasting
set mouse=a                       " use mouse
set scrolloff=3                   " scroll offset

" Language Setting
set encoding=utf-8    " when read a file
scriptencoding utf-8  " when use muti-byte char in Vim Script

" File setting
set fileencoding=utf-8  " use encoding to save file
set fileencodings=utf-8,euc-jp,cp932 " use encoding to read file
set fileformats=unix,dos,mac  " Auto discriminate CR-LF
set ambiwidth=double    " Solve multi-byte characters collapse

" Search Setting
set hlsearch      " highlight match word
set incsearch     " search on time
" set ignorecase
set smartcase
set wrapscan      " cyclic scan

" Indent Setting
set shiftwidth=2    " tab width at beginning of line
set tabstop=2       " tab width except beginning of line
set expandtab       " use <space> instead of <tab>
set softtabstop=2   " expandtab's width
set autoindent      " maintain indentation of previous line at line feed
set smartindent     " calculate indent amount when use smartindent
set shiftwidth=2    " calculation unit of smartindent

" Match Setting
source $VIMRUNTIME/macros/matchit.vim  " expand [%]key command

" Completion Setting
set wildmenu      " use completion on COMMAND MODE
set history=1000  " store history amount
set wildmode=list:longest  " use filename completion

