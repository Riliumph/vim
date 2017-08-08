" Auto execution NerdTree and focus file winows
autocmd VimEnter * NERDTree
"| call feedkeys("\<C-w>l")

" Close automatically when NerdTree is last window
function! s:AutoClose()
  if window#IsLast()
    if exists("b:NERDTree")
       if b:NERDTree.isTabTree()
        q
      endif
    endif
  endif
endfunction
autocmd bufenter * call s:AutoClose()

