"vimデフォルトのエクスプローラをvimfilerで置き換える
let g:vimfiler_as_default_explorer = 1

"現在開いているバッファをIDE風に開く
nnoremap <silent> fi :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>
