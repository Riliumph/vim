" UI Setting
set title
set number
set ruler
set showcmd         " Show command in statusbar
set laststatus=2    " Always show stausbar
if has("gui") || has("gui_running")
  set guioptions-=T " Non-dispkay tool-bar
  set guioptions-=r " Basically hide the right scroll bar
  set guioptions-=l " Basically hide the left scroll bar
endif

" Editor View Setting
set wrap            " Reflow view
set list            " Show invisible character
set listchars=tab:»_,eol:↲,extends:»,precedes:«,nbsp:%  " trail:-

" Cursor Setting
set showmatch       " Highlight the corresponding parenthesis
set matchtime=1     " Highlight delay time(second)
set cursorline      " Highlight cursor line
set whichwrap=b,s,h,l,<,>,[,],~  " Nonstop cursor
if has("gui") || has("gui_running")
  set guicursor=n-v-o-c:ver1-Cursor " Cursor width is a character of 1%
  set guicursor+=r-cr:hor1-Cursor   " Cursor height is a character of 1%
  set guicursor+=sm:block-Cursor
  set guicursor+=a:blinkwait600-blinkon600-blinkoff500 " blinkxx[ms]
endif

