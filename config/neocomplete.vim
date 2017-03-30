""""" NEW KEY MAP during Intellisense
" Left & Right : Cancels completion
inoremap <expr><left> neocomplete#cancel_popup() . "\<left>"
inoremap <expr><right> neocomplete#cancel_popup() . "\<right>"

" TAB : Detemines completion
inoremap <expr><TAB> pumvisible() ? "\<Return>" : "\<TAB>"

" RETURN : Force to input NEW LINE
" inoremap <expr><CR> pumvisible() ? neocomplete#cancel_popup() . "\<CR>" : "\<CR>"

""" Close popup and delete backword char.
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-x><C-o> &filetype == 'vim' ? "\<C-x><C-v><C-p>" : neocomplete#manual_omni_complete()

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

""""" Neo Complete setting
" AutoComplPopを無効にする
let g:acp_enableAtStartup = 0
" 起動時に有効化
let g:neocomplete#enable_at_startup = 1
" 自動で補完候補を出さない
" let g:neocomplete#disable_auto_complete = 1
let g:neocomplete#force_overwrite_completefunc = 1

""" Trigger
" 補完を表示する最小文字数
let g:neocomplete#auto_completion_start_length = 1
" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_smart_case = 1
" smarrt case有効化。 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_smart_case = 1
" camle caseを有効化。大文字を区切りとしたワイルドカードのように振る舞う
let g:neocomplete#enable_camel_case_completion = 1

""" View
" ポップアップメニューで表示される候補の数
let g:neocomplete#max_list = 10
" 補完候補の一番先頭を選択状態にする(AutoComplPopと似た動作)
let g:neocomplete#enable_auto_select = 1
" -入力による候補番号の表示
let g:neocomplete#enable_quick_match = 1

""" Cache Setting
" シンタックスをキャッシュするときの最小文字長
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#max_keyword_width = 10000
" キャッシュフォルダ
let g:neocomplete#data_directory = join([g:dein_dir,"cache","neocomplete"],"/")

" preview window を閉じない
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

