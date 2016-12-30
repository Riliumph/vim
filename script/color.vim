source $VIM_ROOT/script/HighlightCurrentWord.vim
autocmd ColorScheme * highlight CurrentWord term=NONE ctermbg=darkgray ctermfg=NONE

" ignore color scheme highlight
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
autocmd ColorScheme * highlight Comment ctermfg=lightgreen
autocmd ColorScheme * highlight Visual ctermbg=darkblue
autocmd ColorScheme molokai highlight Delimiter ctermfg=none
autocmd ColorScheme molokai highlight Cursorline ctermbg=black

" At last, set colorscheme
" colorscheme elflord
colorscheme molokai
