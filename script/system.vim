" System Setting
set shortmess+=I                  " skip init screen
set noswapfile
set backspace=start,eol,indent    " use backspace to erase
set virtualedit=block
set scrolloff=3                   " scroll offset

" Clipboard Setting
" CUI
if has('unnamedplus')
	" Don't use += operator
	set clipboard^=unnamedplus      " Use +register by yank
endif
set clipboard^=unnamed            " Use *register by yank
set clipboard-=autoselect         " Don't use as yank trigger
" GUI
set guioptions-=a                 " Don't use a select area as yank trigger
set guioptions-=P

" Mouse Setting
if has('mouse')
	set mouse=a  " use mouse
	if has('mouse_sgr')
		set ttymouse=sgr
	elseif 703 < v:version || v:version is 703
		if has('patch632')
			set ttymouse=sgr
		endif
	else
		set ttymouse=xterm2
	endif
endif

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
set shiftwidth=4    " tab width at beginning of line
set tabstop=4       " tab width except beginning of line
set noexpandtab     " use tabcode instead of spaces
set softtabstop=4   " expandtab's width
set autoindent      " maintain indentation of previous line at line feed
set smartindent     " calculate indent amount when use smartindent
set shiftwidth=4    " calculation unit of smartindent

" Match Setting
source $VIMRUNTIME/macros/matchit.vim  " expand [%]key command

" Completion Setting
set wildmenu      " use completion on COMMAND MODE
set history=1000  " store history amount
set wildmode=list:longest  " use filename completion
