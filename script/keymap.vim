""" Microsoft Windows Shortcut key
" must set [stty start / stop undef] in .bashrc
source $VIM_ROOT/script/windows.vim

""" CTRL-G: Grep
nnoremap <C-g> <ESC>:vimgrep
inoremap <C-g> "gy:vimgrep
vnoremap <C-g> "gy:vimgrep <C-R>g %

""" Arrow key
nnoremap j gj
nnoremap k gk
"noremap <down> gj
"noremap <up> gk
inoremap <down> <C-O>gj
inoremap <up>   <C-O>gk

""" Screen
nnoremap hs split
nnoremap vs vsplt
nnoremap s> <C-w>>

""" Go to definition under the cursor
nnoremap vgd :vsp<CR> :exe(join(["tjump", expand('<cword>')], " "))<CR>
nnoremap hgd :hsp<CR> :exe(join(["tjump", expand('<cword>')], " "))<CR>

""" Go to file under the cursor
nnoremap vgf :vertical botright wincmd f<CR>
nnoremap hgf :wincmd f<CR>

""" etc
nnoremap <S-y> y$
nnoremap x "_x
nnoremap + <C-a>
nnoremap - <C-x>
