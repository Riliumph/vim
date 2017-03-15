" Powerline Font
if has("gui_running") || has("gui")
  set guifont=Ricty\ for\ Powerline\ 12
  set guifontwide=Ricty\ for\ Powerline\ 12
else
  set guifont=Ricty\ for\ Powerline:h18
  set guifontwide=Ricty\ for\ Powerline:h18
endif

let g:lightline = {
        \ 'colorscheme': 'landscape',
        \ 'mode_map': {'c': 'NORMAL'},
        \ 'active': {
        \   'left': [ [ 'vim_mode', 'paste' ],
        \             [ 'filename', 'current_tag' ],
        \             [ ''] ],
        \   'right':[ [ 'lineinfo' ],
        \             [ 'fileformat', 'filetype','fileencoding'] ]
        \ },
        \ 'component_function': {
        \   'vim_mode': 'LightlineVimMode',
        \   'opt_mode': 'LightlineOptMode',
        \   'modified': 'LightlineModified',
        \   'readonly': 'LightlineReadonly',
        \   'fugitive': 'LightlineFugitive',
        \   'filename': 'LightlineFilename',
        \   'fileformat': 'LightlineFileformat',
        \   'filetype': 'LightlineFiletype',
        \   'fileencoding': 'LightlineFileencoding',
        \   'current_tag' : 'CurrentTag'
        \ },
        \ 'separator':    { 'left': "\u2b80", 'right': "\u2b82" },
        \ 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" },
        \ }

function! LightlineVimMode()
  return 60 < winwidth(0) ? lightline#mode() : ''
endfunction

function! LightlineOptMode()
	if 60 < winwidth(0)
		return ''
	endif
	if &paste
		return 'PASTE'
	else
		return ''
	endif
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
       \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
       \  &ft == 'unite' ? unite#get_status_string() :
       \  &ft == 'vimshell' ? vimshell#get_status_string() :
       \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineModified()
	if &ft =~ 'help\|vimfiler\|gundo'
		return ''
	elseif &modified
		return '+'
	elseif &modifiable
		return ''
	else
		return '-'
	endif
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
    return fugitive#head()
  else
    return ''
  endif
endfunction

function! CurrentTag()
  return tagbar#currenttag('%s', '')
endfunction

function! LightlineFileformat()
  return 70 < winwidth(0) ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return 70 < winwidth(0) ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return 70 < winwidth(0) ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction


