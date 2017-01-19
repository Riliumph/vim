""" User system highlight
autocmd ColorScheme * highlight CurrentWord  ctermbg=53   ctermfg=none cterm=none

""" ignore color scheme highlight
autocmd ColorScheme * highlight Normal       ctermfg=15   ctermbg=233  cterm=none
autocmd ColorScheme * highlight LineNr       ctermfg=14   ctermbg=235  cterm=none
autocmd ColorScheme * highlight Cursor       ctermfg=16   ctermbg=253  cterm=none
autocmd ColorScheme * highlight CursorLine   ctermfg=none ctermbg=232  cterm=none
autocmd ColorScheme * highlight CursorLineNr ctermfg=11   ctermbg=236  cterm=bold
autocmd ColorScheme * highlight Visual       ctermfg=none ctermbg=25   cterm=bold
autocmd ColorScheme * highlight VisualNOS    ctermfg=none ctermbg=25   cterm=bold
autocmd ColorScheme * highlight Search       ctermfg=none ctermbg=4    cterm=none
autocmd ColorScheme * highlight IncSearch    ctermfg=none ctermbg=166  cterm=none
" Code highlight
autocmd ColorScheme * highlight Comment      ctermfg=40   ctermbg=none cterm=italic
autocmd ColorScheme * highlight Statement    ctermfg=12   ctermbg=none cterm=none

" At last, set colorscheme
colorscheme colorsbox-stnight
