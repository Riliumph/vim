autocmd BufNewFile,BufRead *.fish set filetype=fish

autocmd BufNewFile,BufRead,StdinReadPost *
    \ if getline(1) =~ '^#!.*\Wfish\s*$' |
    \   set ft=fish |
    \ endif

" Indent Setting
augroup Indentation
  autocmd!
  autocmd InsertEnter * setlocal expandtab
  autocmd InsertEnter * setlocal autoindent
  autocmd InsertEnter * setlocal smartindent
augroup END

setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

augroup EraseTrailingSpace
  autocmd!
  autocmd BufWritePre * call util#EraseTrailingSpace()
augroup END

