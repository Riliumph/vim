"""
" GetCharcode
" param: only a character
" return: the ascii character code
function! api#string#GetCharCode()
  " reairects ascii command to expression register[=]
  redir => ascii
  silent! ascii
  redir END

  if match(ascii, 'NUL') != -1
    return 'NUL'
  endif

  let nrformat = '0x%02x'   " Zero pad as hex values
  let encoding = (&fenc == '' ? &enc : &fenc)
  if encoding == 'utf-8'
    " Zero pad with 4 zeroes in unicode files
    let nrformat = '0x%04x'
  endif

  " Get the char and the numeric value from the return value of :ascii
  " This matches the two first pieces of the return value, e.g.
  " '<F> 70' => char: 'F', nr: '70'
  let [str, char, nr; rest] = matchlist(ascii, '\v\<(.{-1,})\>\s*([0-9]+)')

  " Format the numeric value
  let nr = printf(nrformat, nr)

  return join(["'", char, "' ", nr], '')
endfunction
