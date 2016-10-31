" System Setting
set shortmess+=I					" skip init screen
set clipboard=unnamed,autoselect	" use clipboard for yunk etc...     
set fenc=utf-8
set noswapfile
set wildmode=list:longest
set backspace=start,eol,indent		" use backspace to erase
set virtualedit=block
set paste							" invalid autoindent for pasting
set mouse=a							" use mouse

" UI Setting
set title
set number
set ruler
set showcmd			" show command in statusbar
set laststatus=2	" always show stausbar
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
set statusline+=%y

" Editor View Setting
syntax on
set shiftwidth=4	" tab width at beginning of line
set tabstop=4		" tab width except beginning of line
set wrap			" reflow view
set showmatch
set list
set listchars=tab:»_,eol:↲,extends:»,precedes:«,nbsp:%	"trail:-

" Search Setting
set hlsearch		" highlight match word
set incsearch		" search on time
set ignorecase		" 
set smartcase		" 
set wrapscan		" cyclic scan

" Cursor Setting
set cursorline
set showmatch
set matchtime=1
set whichwrap=b,s,h,l,<,>,[,],~	" nonstop cursor

