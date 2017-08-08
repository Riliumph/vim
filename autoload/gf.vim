function! s:IsMatchRegEx(target, regex)
  return a:target =~# a:regex
endfunction


"""
" GfFile
"
" functor for kana/vim-gf-user
" Parse the string under the cursor to the following elements
" - file path
" - line number
" @return filepath & line number & cols number
function! gf#GfFile()
  " Get a string like filename under the cursor
  let path = expand('<cfile>')
  let line = 0
  " Parse string under the cursor
  if s:IsMatchRegEx(path, ':\d\+:\?$')
    let line = matchstr(path, '\d\+:\?$')
    let path = matchstr(path, '.*\ze:\d\+:\?$')
  endif

  " Parse git diff
  if s:IsMatchRegEx(path, '^[ab]/')
    let path = path[2:]  " a/ <- 2 character
  endif

  if !filereadable(path)
    return 0
  endif

  return {
        \ 'path': path,
        \ 'line': line,
        \ 'col': 0,
        \}
endfunction
