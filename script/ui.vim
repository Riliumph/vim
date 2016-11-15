" UI Setting
set title
set number
set ruler
set showcmd         " show command in statusbar
set laststatus=2    " always show stausbar
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
set statusline+=%y

