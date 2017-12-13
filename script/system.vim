" System Setting
set shortmess+=I                  " Skip init screen
set noswapfile
set backspace=start,eol,indent    " Use backspace to erase
set virtualedit=block
set scrolloff=3                   " Scroll offset

" Clipboard Setting
" Prohibit because register conflicts with Copy and Yank
if 0
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
endif

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
set encoding=utf-8      " when read a file
scriptencoding utf-8    " when use muti-byte char in Vim Script

" File setting
set fileencoding=utf-8  " Use encoding to save file
set fileencodings=utf-8,euc-jp,cp932 " Use encoding to read file
set fileformats=unix,dos,mac         " Auto discriminate CR-LF
set ambiwidth=double    " Solve multi-byte characters collapse

" Search Setting
set hlsearch            " Highlight match word
set incsearch           " Search on time
" set ignorecase
set smartcase
set wrapscan            " Do cyclic scan

" Indent Setting
set shiftwidth=4        " Tab width at beginning of line
set tabstop=4           " Tab width except beginning of line
set noexpandtab         " Use tabcode instead of spaces
set softtabstop=4       " Expandtab's width
set autoindent          " Maintain indentation of previous line at line feed
set smartindent         " Calculate indent amount when use smartindent
set shiftwidth=4        " Calculation unit of smartindent

" Match Setting
source $VIMRUNTIME/macros/matchit.vim  " Expand [%]key command

" Completion Setting
set wildmenu            " Use completion on COMMAND MODE
set history=1000        " Store history amount
set wildmode=longest:full  " Use filename completion
