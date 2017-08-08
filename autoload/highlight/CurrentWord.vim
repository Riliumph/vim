function! s:EscapeText( text )
  return substitute( escape(a:text, '\' . '^$.*[~'), "\n", '\\n', 'ge' )
endfunction

function! s:GetCurrentWord()
  let l:cword = expand('<cword>')
  if !empty(l:cword)
    let l:regexp = s:EscapeText(l:cword)
    if l:cword =~# '^\k\+$'
      let l:regexp = '\<' . l:regexp . '\>'
    endif
    return l:regexp
  else
    return ''
  endif
endfunction

function! highlight#CurrentWord#Exe()
  let l:word = s:GetCurrentWord()
  if !empty(l:word)
    if exists("w:current_match")
      call matchdelete(w:current_match)
    endif
    let w:current_match = matchadd('CurrentWord', l:word, 0)
  endif
endfunction

"augroup cwh
"  autocmd! cwh
"  autocmd CursorMoved,CursorMovedI * call s:HighlightCurrentWord()
"augroup END
