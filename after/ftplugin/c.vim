setlocal foldmethod=marker
setlocal foldmarker=#if,#endif

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
  autocmd BufWritePre * call util#EraseTrailingSpace()
augroup END

autocmd VimEnter * Tagbar

