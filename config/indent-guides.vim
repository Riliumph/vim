" Attention
" You need below settings
" - tabstop and shiftwidth are same amount
" - set expandtab

let g:indent_guides_enable_on_vim_startup = 1
" Indent guide width
let g:indent_guides_guide_size = 1
" Starting guide indent level
let g:indent_guides_start_level = 1
" Guide color
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=238

" Exclude setting
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'unite', 'tagbar']


