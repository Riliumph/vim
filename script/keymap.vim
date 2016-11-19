" Microsoft Windows Shortcut key
source $VIM_ROOT/script/mswin.vim        " must set [stty start / stop undef] in .bashrc
nnoremap <BS> <S-X>

" Find Command
nnoremap <C-f> <ESC>/
vnoremap <C-f> "+y/<C-R>+

" Replace Command
nnoremap <C-h> <ESC>:%s/
vnoremap <C-h> "+y:%s/<C-R>+/

" split screen
nnoremap hs :split
nnoremap vs :vsplt
nnoremap s> <C-w>>


" explain
" "+y -> Go to Normal Mode
" <C-R>+ -> paste