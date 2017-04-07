""""" NEW KEY MAP during Intellisense
" Left & Right : Cancels completion and move cursor
inoremap <expr><left> neocomplete#cancel_popup() . "\<left>"
inoremap <expr><right> neocomplete#cancel_popup() . "\<right>"
" Up & Down : Select candidates only while completion list is displayed
inoremap <expr><up> pumvisible() ? "\<up>" :  "\<C-O>gk"
inoremap <expr><down> pumvisible() ? "\<down>" : "\<C-O>gj"

" TAB : Determines completion
inoremap <expr><TAB> pumvisible() ? neocomplete#close_popup() : "\<TAB>"

""" Close popup and delete backword char.
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-x><C-o> &filetype == 'vim' ? "\<C-x><C-v><C-p>" : neocomplete#manual_omni_complete()

" Ctrl+Space ：Start completion like Visual Studio
if !has('gui_running')
	inoremap <expr><C-Space> pumvisible() ? "\<C-n>" : neocomplete#start_manual_complete()
	augroup ctrl_space_in_neocomplete
		autocmd!
		" Don't use noremap because settings after <C-Space> will not be reflected
		autocmd VimEnter * map <Nul> <C-Space>
		autocmd VimEnter * map! <Nul> <C-Space>
	augroup END
endif

""""" Neo Complete setting
""" Boot up system
" Disable AutoComplPop
let g:acp_enableAtStartup = 0
" Enable neocomplete
let g:neocomplete#enable_at_startup = 1

""" Trigger system
" Minimum keyword length requierd to start completion
let g:neocomplete#auto_completion_start_length = 1
" Enable smart case
let g:neocomplete#enable_smart_case = 1
" Enable camel case
let g:neocomplete#enable_camel_case_completion = 1
" Enable snake case
let g:neocomplete#enable_underbar_completion = 1

""" View system
" Automatically select the first candidate in completion list
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_complete_select = 1
" Show quantity of completion
let g:neocomplete#max_list = 10

""" Cache system
" Cache directory
let g:neocomplete#data_directory = join([g:dein_dir,"cache","neocomplete"],"/")
" Minimum keyword length required cache
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#max_keyword_width = 10000

" Don't close preview window
let g:neocomplete#enable_auto_close_preview = 0
autocmd InsertLeave * silent! pclose!

if !exists('g:neocomplete#delimiter_patterns')
	let g:neocomplete#delimiter_patterns= {}
endif

if !exists('g:neocomplete#force_omni_input_patterns')
	let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

if !exists('g:neocomplete#same_filetypes')
	let g:neocomplete#same_filetypes = {}
endif

