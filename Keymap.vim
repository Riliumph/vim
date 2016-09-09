" Microsoft Windows Shortcut key
source $HOME/vimconf/mswin.vim        " must set [stty start / stop undef] in .bashrc
nnoremap <BS> <S-X>


" Replace Command
nnoremap <C-h> <ESC>:%s/
vnoremap <C-h> "+y:%s/<C-R>+


" split screen
nnoremap hs :split
nnoremap vs :vsplt
nnoremap s> <C-w>>

