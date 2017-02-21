" 自動で補完候補を出さない
let g:neocomplete#disable_auto_complete = 1
" Max popup list
let g:neocomplete#max_list=10
" Trigger string length to start completion
let g:neocomplete#auto_completion_start_length = 1

""" NEW KEY MAP during Intellisense
" Left & Right : Cancels completion
inoremap <expr><left> neocomplete#cancel_popup() . "\<left>"
inoremap <expr><right> neocomplete#cancel_popup() . "\<right>"
" TAB : Detemines completion
inoremap <expr><TAB> pumvisible() ? "\<Return>" : "\<TAB>"
" Ctrl+Space ：Show Intellisense like Visual Studio
if !has('gui_running')
  inoremap <expr><C-Space> pumvisible() ? "\<C-n>" : neocomplete#start_manual_complete()
  augroup ctrl_space_in_neocomplete
    autocmd!
    " Don't use noremap because settings after <C-Space> will not be reflected
    autocmd VimEnter * map <Nul> <C-Space>
    autocmd VimEnter * map! <Nul> <C-Space>
  augroup END
endif

