" UI Setting
set title
set number
set ruler
set showcmd         " show command in statusbar
set laststatus=2    " always show stausbar

" status line details
set statusline=%<%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}\ %F%=[0x%{GetB()}]\ (%l,%c%V)%8P
source $VIM_ROOT/script/statusbar.vim

