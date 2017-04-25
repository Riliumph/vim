" Indent Setting
setlocal shiftwidth=2
setlocal tabstop=2
setlocal expandtab
setlocal softtabstop=2
setlocal autoindent
setlocal smartindent
setlocal shiftwidth=2

augroup EraseTrailingSpace
	autocmd!
	autocmd BufWritePre * :%s/\s\+$//ge
augroup END

" Auto tagbar
autocmd VimEnter * Tagbar

