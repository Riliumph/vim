""" Set options and add mapping such that Vim behaves a lot like MS-Windows
" Maintainer:	Riliumph

" bail out if this isn't wanted (mrsvim.vim uses this).
if exists("g:skip_loading_mswin") && g:skip_loading_mswin
  finish
endif

""" Escape 'cpoptions'
" only do this when compiled with expression evaluation
let s:save_cpo = &cpoptions
set cpo&vim

""" set 'selection', 'selectmode', 'mousemodel' and 'keymodel' for MS-Windows
behave mswin

""" backspace
" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]
" backspace in Visual mode deletes selection
vnoremap <BS> d
" backspace in Normal & Visual mode deletes a char before cursor
nnoremap <BS> <S-X>

""" CTRL-Z : Undo; not in cmdline though
noremap <C-Z> u
inoremap <C-Z> <C-O>u

""" CTRL-X / SHIFT-Del : Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

""" CTRL-C / CTRL-Insert : Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

""" CTRL-V / SHIFT-Insert : Paste
map <C-V>      "+gP
map <S-Insert> "+gP
cmap <C-V>      <C-R>+
cmap <S-Insert> <C-R>+
imap <S-Insert> <C-V>
vmap <S-Insert> <C-V>
" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.
" Use CTRL-G u to have CTRL-Z only undo the paste.
exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
exe 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']

""" CTRL-A : Select all
noremap  <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

""" CTRL-S : Save file
noremap  <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

""" CTRL-F : Find character
nnoremap <C-f> <ESC>/
vnoremap <C-f> "+y/<C-R>+
nmap <Esc><Esc> :nohlsearch<CR><Esc>

""" CTRL-H : Replace character
nnoremap <C-h> <ESC>:%s/
vnoremap <C-h> "+y:%s/<C-R>+/

""" CTRL-Y : Redo (although not repeat); not in cmdline though
noremap  <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

""" CTRL-Tab : Move tab
noremap <C-t> <ESC>:tabnew<CR>
" Cannot use <C-Tab> in terminal, as <Tab> = <C-tab>
noremap nt gt
noremap pt gT

""" CTRL-[ : Move between [ and ]
nnoremap <C-]> %

""""" Below this is a remap of the overwritten keymap.
""" CTRL-Q : Go Visual Mode to do what CTRL-V used to do
noremap <C-Q>  <C-V>

""" For CTRL-V to work autoselect must be off.
" On Unix we have two selections, autoselect can be used.
if !has("unix")
  set guioptions-=a
endif

""" Only GUI setting
if has("gui")
	""" Alt-Space : System menu
	noremap <M-Space> :simalt ~<CR>
	inoremap <M-Space> <C-O>:simalt ~<CR>
	cnoremap <M-Space> <C-C>:simalt ~<CR>
	""" Ctrl-Tab : Move tab
	noremap <C-Tab> gt
	noremap <C-S-Tab> gT
endif

""" CTRL-Tab : Next window
"noremap <C-Tab> <C-W>w
"inoremap <C-Tab> <C-O><C-W>w
"cnoremap <C-Tab> <C-C><C-W>w
"onoremap <C-Tab> <C-C><C-W>w

""" CTRL-F4 : Close window
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c

""" Restore 'cpoptions'
set cpo&
let &cpoptions = s:save_cpo
unlet s:save_cpo
