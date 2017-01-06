function! s:GetSyntaxId(transparent)
	let syntax_id = synID(line("."), col("."), 1)
	if a:transparent
		return synIDtrans(syntax_id)
	else
		return syntax_id
	endif
endfunction

function! s:GetSyntaxAttribute(syntax_id)
	let name = synIDattr(a:syntax_id, "name")
	let ctermfg = synIDattr(a:syntax_id, "fg", "cterm")
	let ctermbg = synIDattr(a:syntax_id, "bg", "cterm")
	let guifg = synIDattr(a:syntax_id, "fg", "gui")
	let guibg = synIDattr(a:syntax_id, "bg", "gui")
	return {
	      \ "name": name,
	      \ "ctermfg": ctermfg,
	      \ "ctermbg": ctermbg,
	      \ "guifg": guifg,
	      \ "guibg": guibg}
endfunction

function syntax#GetSyntaxInfo()
	let base_syntax = s:GetSyntaxAttribute(s:GetSyntaxId(0))
	echo "name: " . base_syntax.name . ", "
	   \ "ctermfg: " . base_syntax.ctermfg . ", "
	   \ "ctermbg: " . base_syntax.ctermbg . ", "
	   \ "guifg: " . base_syntax.guifg . ", "
	   \ "guibg: " . base_syntax.guibg
	let linkedSyn = s:GetSyntaxAttribute(s:GetSyntaxId(1))
	echo "link to"
	echo "name: " . linkedSyn.name . ", "
	   \ "ctermfg: " . linkedSyn.ctermfg . ", "
	   \ "ctermbg: " . linkedSyn.ctermbg . ", "
	   \ "guifg: " . linkedSyn.guifg . ", "
	   \ "guibg: " . linkedSyn.guibg
endfunction

