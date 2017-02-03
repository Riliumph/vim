" UI Setting
set title
set number
set ruler
set showcmd         " show command in statusbar
set laststatus=2    " always show stausbar
set guifont=Ricty\ for\ Powerline:h18

" Editor View Setting
set shiftwidth=4    " tab width at beginning of line
set tabstop=4       " tab width except beginning of line
set wrap            " reflow view
set showmatch
set list            " show invisible character
set listchars=tab:»_,eol:↲,extends:»,precedes:«,nbsp:%	" trail:-

" Cursor Setting
set showmatch
set matchtime=1

set cursorline
augroup HighlightOnlyFocus
	autocmd! HighlightOnlyFocus
	autocmd WinLeave * set nocursorline
	autocmd WinEnter,BufRead * set cursorline
augroup END

