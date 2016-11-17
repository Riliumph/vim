" Cursor Setting
set showmatch
set matchtime=1
set whichwrap=b,s,h,l,<,>,[,],~	" nonstop cursor

set cursorline
augroup HighlightOnlyFocus
	autocmd! HighlightOnlyFocus
	autocmd WinLeave * set nocursorline
	autocmd WinEnter,BufRead * set cursorline
augroup END

highlight clear CursorLine
highlight CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=white

