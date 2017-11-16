augroup ReloadEvent
  autocmd!
  autocmd WinEnter * checktime
augroup END

augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
  autocmd ColorScheme * hi TrailingSpaces guibg=Red ctermbg=Red
augroup END

augroup HighlightCurrentWord
  autocmd!
  autocmd CursorMoved,CursorMovedI * call highlight#CurrentWord#Exe()
  autocmd ColorScheme * hi CurrentWord ctermfg=NONE ctermbg=53   cterm=NONE guifg=NONE    guibg=#40006a gui=NONE
augroup END

augroup TogglePasteMode
  autocmd!
  autocmd VimEnter * setlocal paste
  autocmd InsertEnter * setlocal nopaste
  autocmd InsertLeave * setlocal paste
augroup END

augroup AutoHighlightCursor
  autocmd!
  autocmd CursorMoved,CursorMovedI * call s:auto_cursorline('CursorMoved')
  autocmd CursorHold,CursorHoldI * call s:auto_cursorline('CursorHold')
  autocmd WinEnter * call s:auto_cursorline('WinEnter')
  autocmd WinLeave * call s:auto_cursorline('WinLeave')

  let s:cursorline_lock = 0
  function! s:auto_cursorline(event)
    if a:event ==# 'WinEnter'
      setlocal cursorline
      let s:cursorline_lock = 2
    elseif a:event ==# 'WinLeave'
      setlocal nocursorline
    elseif a:event ==# 'CursorMoved'
      if s:cursorline_lock
        if 1 < s:cursorline_lock
          let s:cursorline_lock = 1
        else
          setlocal nocursorline
          let s:cursorline_lock = 0
        endif
      endif
    elseif a:event ==# 'CursorHold'
      setlocal cursorline
      let s:cursorline_lock = 1
    endif
  endfunction
augroup END

