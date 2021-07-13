let g:airline#themes#rodhash#palette = {}

hi airline_tabsel ctermbg=none ctermfg=red cterm=underline guibg=none guifg=red gui=underline
hi airline_tabhid_to_airline_tabsel ctermbg=none ctermfg=yellow guibg=none guifg=yellow
hi airline_tab ctermbg=none ctermfg=yellow cterm=underline guibg=none guifg=yellow gui=underline

let g:airline#extensions#tabline#left_sep = '  '
let g:airline#extensions#tabline#left_alt_sep = '  '

" NORMAL
let s:N1   = [ '#FFD700' , '#1C1C1C' , 220,  234 ]
let s:N2   = [ '#FF0000' , '#1C1C1C' , 9,  234, 'underline' ] "2nd one: buffers tag + buffer BG when inactive (running cmd)
let s:N3   = [ '#7F7F7F' , '#1C1C1C' , 8,   234]
let g:airline#themes#rodhash#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
"let g:airline#themes#rodhash#palette.normal_modified = {
      "\ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      "\ }

" INSERT
let s:I1 = [ '#ffd700' , '#1C1C1C' , 16, 9,   'underline'       ]
let s:I2 = [ '#FF0000' , '#1C1C1C' , 9 , 234, 'underline'  ]
let s:I3 = [ '#7F7F7F' , '#1C1C1C' , 8 , 234               ]
let g:airline#themes#rodhash#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
"let g:airline#themes#rodhash#palette.insert_modified = {
      "\ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      "\ }
"let g:airline#themes#rodhash#palette.insert_paste = {
      "\ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
      "\ }

" REPLACE
let s:R1 = [ '#1C1C1C' , '#87D7FF' , 234 , 117  ]
let s:R2 = [ '#87FF00' , '#4E4E4E' , 188 , 239  ]
let s:R3 = [ '#7F7F7F' , '#1C1C1C' , 8    , 234 ]
let g:airline#themes#rodhash#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
"let g:airline#themes#rodhash#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]
"let g:airline#themes#rodhash#palette.replace_modified = g:airline#themes#rodhash#palette.insert_modified

" VISUAL
let s:V1 = [ '#1C1C1C' , '#0087FF' , 234 , 33 ]
let s:V2 = [ '#D7D7D7' , '#4E4E4E' , 188 , 239  ]
let s:V3 = [ '#7F7F7F' , '#1C1C1C' , 8  , 234 ]
let g:airline#themes#rodhash#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
"let g:airline#themes#rodhash#palette.visual_modified = {
      "\ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      "\ }

" INACTIVE
let s:IA1 = [ '#5F5F5F' , '#3A3A3A' , 59 , 237 , '' ]
let s:IA2 = [ '#1C1C1C' , '#5F5F87' , 188 , 60 , '' ]
let s:IA3 = [ '#CD0000' , '#1C1C1C' , 1 , 234 , 'bold' ]
let g:airline#themes#rodhash#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
"let g:airline#themes#rodhash#palette.inactive_modified = {
      "\ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      "\ }

" TERMINAL
let g:airline#themes#rodhash#palette.terminal = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#rodhash#palette.normal.airline_term = s:N3
let g:airline#themes#rodhash#palette.terminal.airline_term = s:I3
let g:airline#themes#rodhash#palette.visual.airline_term = s:V3

let g:airline#themes#rodhash#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 196 , ''  ]
      \ }

" CTRLP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#rodhash#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#D7D7D7' , '#1C1C1C' , 188 , 234  , 'bold'     ],
      \ [ '#0087FF' , '#3A3A3A' , 33  , 237 , 'bold'     ],
      \ [ '#1C1C1C' , '#CD0000' , 234 , 1  , ''     ])



