function api#window#GetQty()
  return winnr("$")
endfunction

function api#window#IsLast()
  return api#window#GetQty() == 1
endfunction
