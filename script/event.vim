augroup EraseTrailingSpace
	autocmd!
	autocmd BufWritePre * :%s/\s\+$//ge
augroup END

augroup HighlightTrailingSpaces
	autocmd!
	autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
	autocmd ColorScheme * highlight TrailingSpaces guibg=Red ctermbg=Red
augroup END

augroup HighlightCurrentWord
	autocmd!
	autocmd CursorMoved,CursorMovedI * call highlight#CurrentWord#Exe()
	autocmd ColorScheme * highlight CurrentWord ctermbg=53   ctermfg=none cterm=none
augroup END
