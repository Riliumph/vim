function! s:IsMatchRegEx(target, regex)
	return a:target =~# a:regex
endfunction

function! s:ParseFilename()
	let l:offset = 6 " [--- a/] => 6 character
	let l:visual_mode = 'v'
	let l:cmd = '^' . l:offset . 'l'. l:visual_mode . '$'
	return l:cmd
endfunction

function! s:SwitchCommand(command)
	" Get a string like filename under the cursor
	let l:target_path = expand('<cfile>')

	if !s:IsMatchRegEx(l:target_path, '^[ab]/')
		return a:command
	elseif filereadable(l:target_path) || isdirectory(l:target_path)
		return a:command
	endif
	let l:cmd = s:ParseFilename() . a:command
	return l:cmd
endfunction

function! gf#Exe()
	let l:cmd = s:SwitchCommand('gf')
	return l:cmd
endfunction


