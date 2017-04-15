function! util#Refresh()
	echo 'Refresh Vim!!'
	source $VIM_ROOT/init.vim
endfunction

function! util#ShowFilename()
  echo expand("%")
endfunction
