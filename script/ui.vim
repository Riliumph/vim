" UI Setting
set title
set number
set ruler
set showcmd         " show command in statusbar
set laststatus=2    " always show stausbar

" status line details
set statusline=%<%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}\ %F%=[0x%{GetB()}]\ (%l,%c%V)%8P
source $VIM_ROOT/script/statusbar.vim

" Cursor Setting
set showmatch
set matchtime=1

set cursorline
augroup HighlightOnlyFocus
	autocmd! HighlightOnlyFocus
	autocmd WinLeave * set nocursorline
	autocmd WinEnter,BufRead * set cursorline
augroup END

highlight clear CursorLine
highlight CursorLine ctermbg=black guibg=white

