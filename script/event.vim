augroup HighlightOnlyFocus
	autocmd! HighlightOnlyFocus
	autocmd WinLeave * set nocursorline
	autocmd WinEnter,BufRead * set cursorline
augroup END

augroup HighlightTrailingSpaces
	autocmd!
	autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
	autocmd ColorScheme * highlight TrailingSpaces guibg=Red ctermbg=Red
augroup END

augroup HighlightCurrentWord
	autocmd!
	autocmd CursorMoved,CursorMovedI * call highlight#CurrentWord#Exe()
	autocmd ColorScheme * highlight CurrentWord ctermfg=NONE ctermbg=53   cterm=NONE guifg=NONE    guibg=#40006a gui=NONE
augroup END

augroup TogglePasteMode
	autocmd!
	autocmd VimEnter * set paste
	autocmd InsertEnter * set nopaste
	autocmd InsertLeave * set paste
augroup END

