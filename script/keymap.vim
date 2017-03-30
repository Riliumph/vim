""" Microsoft Windows Shortcut key
" must set [stty start / stop undef] in .bashrc
source $VIM_ROOT/script/windows.vim

""" Screen
nnoremap hs split
nnoremap vs vsplt
nnoremap s> <C-w>>

""" Go to file under the cursor
nnoremap <expr> gf gf#Exe()

""" Go to definition under the cursor
nnoremap vgd :vsp<CR> :exe(join(["tjump", expand('<cword>')], " "))<CR>
nnoremap hgd :hsp<CR> :exe(join(["tjump", expand('<cword>')], " "))<CR>
