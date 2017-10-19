""" New Key map

""" CTRL-B
nnoremap <C-b> :<C-u>Unite buffer: -auto-preview -buffer-name=search-buffer<CR>

""" CTRL-G
nnoremap <C-g>      :<C-u>Unite grep:  -auto-preview -buffer-name=search-buffer<CR>
inoremap <C-g> <ESC>:<C-u>Unite grep:  -auto-preview -buffer-name=search-buffer<CR>
" Use register [g] to avoid conflict other system
vnoremap <C-g>      "gy:<C-u>Unite grep:% -auto-preview -buffer-name=search-buffer<CR><C-R>g<CR>
vnoremap <M-g>      "gy:<C-u>Unite grep:. -auto-preview -buffer-name=search-buffer<CR><C-R>g<CR>
vnoremap <C-a><C-g> "gy:<C-u>Unite grep:. -auto-preview -buffer-name=search-buffer<CR><C-R>g<CR>

""" Command
" Grep the word under the cursor
nnoremap <silent> giw :<C-u>Unite grep:% -auto-preview -buffer-name=search-buffer<CR><C-R><C-W><CR>
nnoremap <silent> GIW :<C-u>Unite grep:. -auto-preview -buffer-name=Search-buffer<CR><C-R><C-W><CR>
" Regrep back there
nnoremap <silent> ,rg :<C-u>UniteResume search-buffer<CR>

""" Unite command
" Escape Unite buffer
autocmd FileType unite nnoremap <silent><buffer> <ESC><ESC> :q<CR>
autocmd FileType unite inoremap <silent><buffer> <ESC><ESC> <ESC>:q<CR>

""" Unite Setting
" Enter unite interface with INSERT MODE
let g:unite_enable_start_insert = 1

" Enable smart case
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" Use any grep command instead of GNU grep
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nocolor --nogroup --vimgrep'
  let g:unite_source_frep_recursive_opt = ''
endif
