function! s:IsMatchRegEx(target, regex)
  return a:target =~# a:regex
endfunction

function! gitdiff#search_file(command)
  " Get a string like filename under the cursor
  let l:target_path = expand('<cfile>')

  if !s:IsMatchRegEx(l:target_path, '^[ab]/')
    return a:command
  endif

  if filereadable(l:target_path) || isdirectory(l:target_path)
    return a:command
  else
    " BUGS: Side effect - Cursor position is changed.
    let l:vim_regex = '\f'
    let l:option = 'cenW'
    let [_, c] = searchpos( join([l:vim_regex, '+'], '\'), l:option)
    let l:offset = 6 " --- a/ => 6 character
    let l:visual_mode = 'v'

    " let g:cmd_str = c . '|' . l:visual_mode . (len(l:target_path) - 2 - 1) . 'h' . a:command
    let g:cmd_str = '^' . l:offset . 'l'. l:visual_mode . '$' . a:command
    return g:cmd_str
  endif
endfunction

