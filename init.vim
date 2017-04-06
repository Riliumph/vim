""" Store compatible vi
" only do this when compiled with expression evaluation
let s:save_cpo = &cpoptions
set cpo&vim

""" Basic configuration
source $VIM_ROOT/init_dein.vim
source $VIM_ROOT/script/system.vim
source $VIM_ROOT/script/ui.vim
source $VIM_ROOT/script/keymap.vim
source $VIM_ROOT/script/event.vim
source $VIM_ROOT/script/command.vim
source $VIM_ROOT/script/color.vim

""" Plugin configuration
" The plugins managed by dein.vim are automatically loaded at the timing described in the toml file


""" Restore 'cpoptions'
let &cpo = s:save_cpo

