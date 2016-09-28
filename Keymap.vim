" Microsoft Windows Shortcut key
source $RUNTIME_FOR_VIM/mswin.vim        " must set [stty start / stop undef] in .bashrc
nnoremap <BS> <S-X>

" Find Command
nnoremap <C-f> <ESC>/
vnoremap <C-f> "+y/<C-R>+       " "+y -> go to N-mode & <C-R>+ -> paste

" Replace Command
nnoremap <C-h> <ESC>:%s/
vnoremap <C-h> "+y:%s/<C-R>+/

" split screen
nnoremap hs :split
nnoremap vs :vsplt
nnoremap s> <C-w>>

