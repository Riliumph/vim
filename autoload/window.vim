function window#GetQty()
  return winnr("$")
endfunction

function window#IsLast()
  return window#GetQty() == 1
endfunction
