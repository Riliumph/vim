""" Microsoft Windows Shortcut key
" must set [stty start / stop undef] in .bashrc
source $VIM_ROOT/script/windows.vim

""" Same key
nnoremap ; :

""" Screen
nnoremap hs split
nnoremap vs vsplt
nnoremap s> <C-w>>

nnoremap <expr> gf gf#Exe()

