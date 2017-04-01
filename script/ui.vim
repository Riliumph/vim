" UI Setting
set title
set number
set ruler
set showcmd         " show command in statusbar
set laststatus=2    " always show stausbar

" Editor View Setting
set wrap            " reflow view
set list            " show invisible character
set listchars=tab:»_,eol:↲,extends:»,precedes:«,nbsp:%	" trail:-

" Cursor Setting
set showmatch       " highlight the corresponding parenthesis
set matchtime=1     " highlight delay time(second)
set cursorline
if has("gui") || has("gui_running")
	"set guicursor=n-v-o-c:ver5-Cursor,r-cr:hor5-Cursor-blinkwait1-blinkoff1000-blinkon1000,sm:block-Cursor-blinkwait1-blinkoff1000-blinkon1000
	" blinkxx[ms]
	set guicursor=n-v-o-c:ver1-Cursor,r-cr:hor1-Cursor,sm:block-Cursor,a:blinkwait1-blinkon600-blinkoff600
endif

