nmap <leader>1 <plug>AirlineSelectTab1
nmap <leader>2 <plug>AirlineSelectTab2
nmap <leader>3 <plug>AirlineSelectTab3
nmap <leader>4 <plug>AirlineSelectTab4
nmap <leader>5 <plug>AirlineSelectTab5
nmap <leader>6 <plug>AirlineSelectTab6
nmap <leader>7 <plug>AirlineSelectTab7
nmap <leader>8 <plug>AirlineSelectTab8
nmap <leader>9 <plug>AirlineSelectTab9
nmap <leader>0 <plug>AirlineSelectTab10
nmap <S-H> <plug>AirlineSelectPrevTab
nmap <S-L> <plug>AirlineSelectNextTab

let g:airline_symbols.colnr = 'col:'
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = ' line:'
let g:airline_symbols.maxlinenr = ' ☰ '

let airline#extensions#nvimlsp#error_symbol = 'Errors: '
let airline#extensions#nvimlsp#warning_symbol = 'Warnings: '
let g:airline#extensions#branch#vcs_priority = ["fugitive"]
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline_powerline_fonts = 1
let g:airline_theme= 'minimalist'
let g:airline_detect_spell=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_skip_empty_sections = 0
let g:airline#extensions#default#section_truncate_width = {
    \ 'b': 60,
    \ 'x': 60,
    \ 'y': 88,
    \ 'z': 45,
    \ 'warning': 80,
    \ 'error': 80,
    \ }

"let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#tab_nr_type = 2
"let g:airline#extensions#tabline#buffer_nr_show = 1
"
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

