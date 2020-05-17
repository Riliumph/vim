" Use alt key
set winaltkeys=no

""" Microsoft Visual Studio for Windows Shortcut key
" must set [stty start / stop undef] in .bashrc
source $VIM_ROOT/script/windows.vim
source $VIM_ROOT/script/Macintosh.vim

""" CTRL-G: Grep
nnoremap <C-g> <ESC>:vimgrep
inoremap <C-g> "gy:vimgrep
vnoremap <C-g> "gy:vimgrep <C-R>g %

""" Arrow key
" Enable to use in the selection mode
vnoremap <S-Up>   gk
vnoremap <S-Down> gj
vnoremap <S-Left>  h
vnoremap <S-Right> l
" Enable to use in the insert mode
inoremap <down> <C-O>gj
inoremap <up>   <C-O>gk

""" Search
" Go center after search
nmap n   nzz
nmap N   Nzz
nmap *   *zz
nmap #   #zz
nmap g* g*zz
nmap g# g#zz


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
" Clear screen
nnoremap <silent> <c-l> :<c-u>nohlsearch<CR><c-l>
" Yank to the end of line
nnoremap <S-y> y$
" Remap <C-a> / <C-x>
nnoremap + <C-a>
nnoremap - <C-x>
" Useful ESC key
inoremap jj <ESC>
