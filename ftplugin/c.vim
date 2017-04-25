setlocal foldmethod=marker
setlocal foldmarker=#if,#endif

" Indent Setting
setlocal shiftwidth=2    " tab width at beginning of line
setlocal tabstop=2       " tab width except beginning of line
setlocal expandtab       " use <space> instead of <tab>
setlocal softtabstop=2   " expandtab's width
setlocal autoindent      " maintain indentation of previous line at line feed
setlocal smartindent     " calculate indent amount when use smartindent
setlocal shiftwidth=2    " calculation unit of smartindent

augroup EraseTrailingSpace
	autocmd!
	autocmd BufWritePre * :%s/\s\+$//ge
augroup END

autocmd VimEnter * Tagbar

