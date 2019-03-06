let g:items = { 'e': ['é', 'è', 'e'],
              \ 'a': ['à', 'â', 'ä', 'a'],
              \ '2': ['²', '2']
              \ }

function! vimvimvim#open(def) abort
  copen 5
  set modifiable
  set relativenumber!
  set nonu
  set cursorline
  let elements = deepcopy(g:items)
  call vimvimvim#display(g:items[a:def])
  nnoremap <buffer> <silent> <enter> :call vimvimvim#validate()<enter>
  nnoremap <buffer> <silent> <esc> :q!<enter>

  for section in keys(g:items)
    execute 'nnoremap <buffer> ' . section . ' :call vimvimvim#display(g:items["' . section . '"])<enter>'
  endfor
endfunction

function! vimvimvim#display(list) abort
  execute ':normal ggdG'
  call reverse(a:list)
  for item in a:list
    call append('.', 'Append: ' . item)
  endfor
  j
endfunction

function! vimvimvim#validate() abort
  let content = getline('.')
  q!
  call vimvimvim#output(content[8:])
  startinsert!
endfunction

function! vimvimvim#output(char) abort
  execute ':normal! a' . a:char
endfunction

imap eee <esc>:call vimvimvim#open('e')<enter>
imap aaa <esc>:call vimvimvim#open('a')<enter>
imap 222 <esc>:call vimvimvim#open('2')<enter>

