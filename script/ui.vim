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
  set guicursor=n-v-o-c:ver1-Cursor " Cursor width is a character of 1%
  set guicursor+=r-cr:hor1-Cursor   " Cursor height is a character of 1%
  set guicursor+=sm:block-Cursor
  " blinkxx[ms]
  set guicursor+=a:blinkwait600-blinkon600-blinkoff500
endif

