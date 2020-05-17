" Powerline Font
if has("gui_running") || has("gui")
  set guifont=Ricty\ for\ Powerline\ 12
  if g:os == "Mac"
    set guifontwide=ヒラギノ角ゴ\ StdN\ W8:h14
  else
    set guifontwide=Ricty\ for\ Powerline\ 12
  endif
else
  set guifont=Ricty\ for\ Powerline:h18
  set guifontwide=Ricty\ for\ Powerline:h18
endif

let g:lightline = {
  \ 'colorscheme': 'landscape',
  \ 'mode_map': {'c': 'NORMAL'},
  \ 'active': {
  \   'left': [['vim_mode', 'opt_mode'],
  \            ['ro_only','filename', 'current_tag'],
  \            ['']],
  \   'right':[['lineinfo'],
  \            ['char_code'],
  \            ['filetype','fileencoding','fileformat']]
  \ },
  \ 'inactive': {
  \   'left': [['filename', 'current_tag']],
  \   'right':[['']]
  \ },
  \ 'component_function': {
  \   'vim_mode': 'LightlineVimMode',
  \   'opt_mode': 'LightlineOptMode',
  \   'ro_only':  'LightlineReadOnly',
  \   'modified': 'LightlineModified',
  \   'fugitive': 'LightlineFugitive',
  \   'filename': 'LightlineFilename',
  \   'fileformat': 'LightlineFileformat',
  \   'filetype': 'LightlineFiletype',
  \   'fileencoding': 'LightlineFileencoding',
  \   'current_tag' : 'CurrentTag',
  \   'char_code' : 'CurrentCharCode'
  \ },
  \ 'separator':    { 'left': "\u2b80", 'right': "\u2b82" },
  \ 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" },
  \ }

function! LightlineVimMode()
  if winwidth(0) < 20
    return ''
  endif
  return &modifiable ? lightline#mode() : ''
endfunction

function! LightlineOptMode()
  if winwidth(0) < 30
    return ''
  endif
  return &paste && &modifiable ? 'PASTE' : ''
endfunction

let s:filetype_dict={
      \'nerdtree': 'NERD Tree',
      \'tagbar'  : 'Tagbar',
      \'help'    : 'help.txt'
      \}

function! LightlineReadOnly()
  if winwidth(0) < 40
    return ''
  endif
  return &readonly ? '[⭤]' : ''
endfunction

function! LightlineFilename()
  " Special Name
  if has_key(s:filetype_dict, &ft)
    return s:filetype_dict[&ft]
  endif

  let l:format=''
  " Add filename
  if expand('%:t') != ''
    let l:format = join([l:format, expand('%:t')], '')
  else
    let l:format = join([l:format, '[No Name]'], '')
  endif
  " Add MOD mark
  if LightlineModified() != ''
    let l:format = join([l:format, LightlineModified()], ' ')
  endif
  return l:format
endfunction

function! LightlineModified()
  if !&modifiable
    return '[-]'
  elseif &modified
    return '[+]'
  else
    return ''
  endif
endfunction

function! LightlineFugitive()
  return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! CurrentTag()
  if winwidth(0) < 50
    return ''
  endif
  return tagbar#currenttag('%s', '')
endfunction

function! LightlineFileformat()
  if winwidth(0) < 100
    return ''
  endif
  return &fileformat
endfunction

function! LightlineFiletype()
  if winwidth(0) < 90
    return ''
  endif
  if &filetype !=# ''
    return &filetype
  endif
  return 'no ft'
endfunction

function! LightlineFileencoding()
  if winwidth(0) < 80
    return ''
  endif

  if &fenc !=# ''
    return &fenc
  else
    return &enc
endfunction

function! CurrentCharCode()
  if winwidth(0) < 70
    return ''
  endif
  return api#string#GetCharCode()
endfunction
