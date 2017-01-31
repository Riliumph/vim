" Set dein install directory
let s:dein_dir = expand("$HOME/.config/deinvim")
let s:dein_repo_dir = join([s:dein_dir, 'repos/github.com/Shougo/dein.vim'], '/')

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
if dein#load_state(join([s:dein_dir,'./'],'/'))
  call dein#begin(join([s:dein_dir,'./'],'/'))

  " Let dein manage dein
  " Required:
  call dein#add(s:dein_repo_dir)

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

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

