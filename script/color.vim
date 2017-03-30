""" User system highlight
""" ignore color scheme highlight
autocmd ColorScheme * highlight Normal       ctermfg=15   ctermbg=233  cterm=NONE guifg=#ffffff guibg=#1e1e1e gui=NONE
autocmd ColorScheme * highlight LineNr       ctermfg=14   ctermbg=235  cterm=NONE guifg=#ffff00 guibg=NONE    gui=NONE
autocmd ColorScheme * highlight Cursor       ctermfg=16   ctermbg=253  cterm=NONE guifg=NONE    guibg=#ffffff gui=NONE
autocmd ColorScheme * highlight CursorLine   ctermfg=NONE ctermbg=232  cterm=NONE guifg=NONE    guibg=#0a0a0a gui=NONE
autocmd ColorScheme * highlight CursorLineNr ctermfg=11   ctermbg=232  cterm=bold guifg=#ffff00 guibg=#0a0a0a gui=bold
autocmd ColorScheme * highlight Visual       ctermfg=NONE ctermbg=25   cterm=bold guifg=NONE    guibg=#006ad5 gui=bold
autocmd ColorScheme * highlight VisualNOS    ctermfg=NONE ctermbg=25   cterm=bold guifg=NONE    guibg=#565656 gui=bold
autocmd ColorScheme * highlight IncSearch    ctermfg=NONE ctermbg=4    cterm=bold guifg=NONE    guibg=#773800 gui=bold
autocmd ColorScheme * highlight Search       ctermfg=NONE ctermbg=52   cterm=NONE guifg=NONE    guibg=#773800 gui=NONE
" Code highlight
autocmd ColorScheme * highlight Comment      ctermfg=40   ctermbg=NONE cterm=italic guifg=#00ff00 guibg=NONE gui=italic
autocmd ColorScheme * highlight Statement    ctermfg=12   ctermbg=NONE cterm=NONE   guifg=#569cd6 guibg=NONE gui=NONE

" At last, set colorscheme
colorscheme colorsbox-stnight
