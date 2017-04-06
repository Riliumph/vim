""" New Key map
""" CTRL-G
nnoremap <C-g> :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
inoremap <C-g> <ESC>:<C-u>Unite grep:. -buffer-name=search-buffer<CR>
" Use register [g] to avoid conflict other system
vnoremap <C-g> "gy:<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R>g<CR>

""" Command
" Grep the word under the cursor
nnoremap <silent> ,cg yiw:<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R>0<CR>
" Regrep back there
nnoremap <silent> ,rg :<C-u>UniteResume search-buffer<CR>

""" Unite Setting
" Enter unite interface with INSERT MODE
let g:unite_enable_start_insert = 1

" Enable smart case
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" Use any grep command instead of GNU grep
if executable('ag')
	let g:unite_source_grep_command = 'ag'
	let g:unite_source_grep_default_opts = '--nogroup --column --nocolor'
	let g:unite_source_frep_recursive_opt = ''
endif
