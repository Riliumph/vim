""" Store compatible vi
" only do this when compiled with expression evaluation
let s:save_cpo = &cpoptions
set cpo&vim
execute 'set runtimepath+=' . $VIM_ROOT

""" Judge Operating System
let g:os = ""
if has('win32')
    let g:os = "Win"
elseif has('mac')
    let g:os = "Mac"
else
    let g:os = system("uname")
endif

""" Basic configuration
source $VIM_ROOT/script/system.vim
source $VIM_ROOT/script/ui.vim
source $VIM_ROOT/script/keymap.vim
source $VIM_ROOT/script/event.vim
source $VIM_ROOT/script/command.vim
source $VIM_ROOT/script/color.vim

""" Plugin configuration
" The plugins managed by dein.vim are automatically loaded at the timing described in the toml file
source $VIM_ROOT/init_dein.vim

""" Restore 'cpoptions'
let &cpo = s:save_cpo

