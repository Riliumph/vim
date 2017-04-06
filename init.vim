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

""" Subsequently, plug-in configuration
source $VIM_ROOT/config/anzu.vim
source $VIM_ROOT/config/lightline.vim
source $VIM_ROOT/config/neocomplete.vim
source $VIM_ROOT/config/unite.vim
source $VIM_ROOT/config/tagbar.vim
source $VIM_ROOT/config/nerdtree.vim " Finally load this plugin

""" Restore 'cpoptions'
let &cpo = s:save_cpo

