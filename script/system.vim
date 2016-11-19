" System Setting
set shortmess+=I                    " skip init screen
set clipboard=unnamed,autoselect    " use clipboard for yunk etc...
set fenc=utf-8
set noswapfile
set wildmode=list:longest
set backspace=start,eol,indent      " use backspace to erase
set virtualedit=block
set paste                           " invalid autoindent for pasting
set mouse=a                         " use mouse
autocmd BufWritePre * :%s/\s\+$//ge " auto erase trailing space
set scrolloff=3                     " scroll offset
set whichwrap=b,s,h,l,<,>,[,],~	    " nonstop cursor

" Search Setting
set hlsearch        " highlight match word
set incsearch       " search on time
set ignorecase
set smartcase
set wrapscan        " cyclic scan

