" UI Setting
set title
set number
set ruler
set showcmd         " show command in statusbar
set laststatus=2    " always show stausbar
if has("gui") || has("gui_running")
  set guioptions-=T " non-dispkay tool-bar
endif
" Editor View Setting
set wrap            " reflow view
set list            " show invisible character
set listchars=tab:»_,eol:↲,extends:»,precedes:«,nbsp:%  " trail:-

" Cursor Setting
set showmatch       " highlight the corresponding parenthesis
set matchtime=1     " highlight delay time(second)
set cursorline      " highlight cursor line
set whichwrap=b,s,h,l,<,>,[,],~  " nonstop cursor
if has("gui") || has("gui_running")
  " blinkxx[ms]
  set guicursor=n-v-o-c:ver1-Cursor,r-cr:hor1-Cursor,sm:block-Cursor,a:blinkwait0-blinkon600-blinkoff600
endif

