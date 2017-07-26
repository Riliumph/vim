function! util#Refresh()
	echo 'Refresh Vim!!'
	source $VIM_ROOT/init.vim
endfunction

function! util#ShowFilename()
	echo expand("%")
endfunction

function! util#EraseTrailingSpace()
	:%s/\s\+$//ge
endfunction

function! util#ClearRegister()
	let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
	for r in regs
		call setreg(r, [])
	endfor
	echo 'Clear register'
endfunction
