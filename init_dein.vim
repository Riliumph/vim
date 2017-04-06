" Set dein install directory
let g:dein_dir = $DEIN_ROOT " Don't use built-in expand() function
if strlen(g:dein_dir) == 0
  let g:dein_dir=join([$VIM_ROOT, 'plug-dein'], '/')
endif
let s:dein_repo_dir = join([g:dein_dir, 'repos/github.com/Shougo/dein.vim'], '/')

" auto install dein.vim
if !isdirectory(s:dein_repo_dir)
  echo 'Install dein.vim'
  echo 'Please wait...'
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
execute 'set runtimepath+=' . s:dein_repo_dir

" Required:
if dein#load_state(join([g:dein_dir,'/'],''))
  call dein#begin(join([g:dein_dir,'/'],''))

  let g:toml_dir  = expand('~/.vim/toml')
  let s:toml      = join([g:toml_dir, 'dein.toml'], '/')
  let s:lazy_toml = join([g:toml_dir, 'lazy.toml'], '/')

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

