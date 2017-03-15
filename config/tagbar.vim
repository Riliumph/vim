" ctags' path (ubuntu's sample)
" let g:tagbar_ctags_bin = '/usr/bin/ctags-exuberant'
if has("Win32")
  let g:tagbar_ctags_bin = 'C:\hoge\ctags.exe'
endif

" Auto exe tagbar
autocmd VimEnter * Tagbar

