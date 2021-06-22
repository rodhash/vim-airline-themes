let g:airline#themes#rodhash#palette = {}

hi airline_tabsel ctermbg=none ctermfg=red cterm=underline
hi airline_tabhid_to_airline_tabsel ctermbg=none ctermfg=yellow
hi airline_tab ctermbg=none ctermfg=yellow cterm=underline

let g:airline#extensions#tabline#left_sep = '  '
let g:airline#extensions#tabline#left_alt_sep = '  '

" NORMAL
let s:N1   = [ '#585858' , '#E4E4E4' , 220,  234 ]
let s:N2   = [ '#E4E4E4' , '#0087AF' , 9,  234, 'underline' ] "2nd one: buffers tag + buffer BG when inactive (running cmd)
let s:N3   = [ '#EEEEEE' , '#005F87' , 8,   234]
let g:airline#themes#rodhash#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
"let g:airline#themes#rodhash#palette.normal_modified = {
      "\ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      "\ }

" INSERT
let s:I1 = [ '#585858' , '#E4E4E4' , 220, 234, 'bold' ]
let s:I2 = [ '#E4E4E4' , '#47AF00' , 9 , 234, 'underline'  ]
let s:I3 = [ '#EEEEEE' , '#2E8700' , 8  , 234  ]
let g:airline#themes#rodhash#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
"let g:airline#themes#rodhash#palette.insert_modified = {
      "\ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      "\ }
"let g:airline#themes#rodhash#palette.insert_paste = {
      "\ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
      "\ }

" REPLACE
let s:R1 = [ '#585858' , '#E4E4E4' , 234 , 117  ]
let s:R2 = [ '#E4E4E4' , '#AF5F00' , 188 , 239  ]
let s:R3 = [ '#EEEEEE' , '#875300' , 8    , 234 ]
let g:airline#themes#rodhash#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
"let g:airline#themes#rodhash#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]
"let g:airline#themes#rodhash#palette.replace_modified = g:airline#themes#rodhash#palette.insert_modified

" VISUAL
let s:V1 = [ '#585858' , '#E4E4E4' , 234 , 33 ]
let s:V2 = [ '#E4E4E4' , '#AF2800' , 188 , 239  ]
let s:V3 = [ '#EEEEEE' , '#872800' , 8  , 234 ]
let g:airline#themes#rodhash#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
"let g:airline#themes#rodhash#palette.visual_modified = {
      "\ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      "\ }

" INACTIVE
let s:IA1 = [ '#585858' , '#E4E4E4' , 59 , 237 , '' ]
let s:IA2 = [ '#E4E4E4' , '#466D79' , 188 , 60 , '' ]
let s:IA3 = [ '#EEEEEE' , '#324E59' , 1 , 234 , 'bold' ]
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
      \ [ '#E4E4E4' , '#00AFA2' , 188 , 234  , 'bold'     ],
      \ [ '#EEEEEE' , '#008787' , 33  , 237 , 'bold'     ],
      \ [ '#585858' , '#E4E4E4' , 234 , 1  , ''     ])



