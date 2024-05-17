let g:colors_name = "blend"
set background=dark

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif


let s:red = "1"
let s:green = "2"
let s:blue = "4"
let s:yellow = "3"
let s:purple = "5"
let s:cyan = "6"
let s:white = "7"
let s:black = "0"

let s:bright_red = "9"
let s:bright_green = "10"
let s:bright_blue = "12"
let s:bright_yellow = "11"
let s:bright_purple = "13"
let s:bright_cyan = "14"
let s:bright_white = "15"
let s:bright_black = "8"

let s:none = "NONE"
let s:underline = "underline"

function! s:hi(group, ctermfg, ctermbg, attr, guisp)
  let cmd = ""
  if a:ctermfg != ""
    let cmd = cmd . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    let cmd = cmd . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    let cmd = cmd . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction


"         | Group           | fg              | bg        | attr  | guisp
call s:hi("Normal",         s:white,   "NONE",    "",      "")
call s:hi("NonText",        s:white,   "NONE",    "",      "")
call s:hi("StatusLine",     s:white,   "NONE",    "",      "")
call s:hi("WildMenu",       s:white,   "NONE",    "",      "")
call s:hi("Pmenu",       s:white,          "NONE",    "",      "")
call s:hi("PmenuSel",       s:cyan,          "NONE",    "",      "")
call s:hi("VertSplit",       "NONE",          "NONE",    "NONE",      "")
call s:hi("Cursor",         s:purple,         "NONE",    "",      "")
call s:hi("ColorColumn",    s:white,          "NONE",    "",      "")
call s:hi("LineNr",         s:white,          "NONE",    "",      "")
call s:hi("CursorLineNr",   s:bright_white,   s:bright_black,    "NONE",      "")
call s:hi("CursorLine",     s:bright_white,   s:bright_black,    "NONE",      "")
call s:hi("SignColumn",     s:white,          "NONE",    "",      "")

" ---- Language ----
call s:hi("Boolean", s:white, "", "", "")
call s:hi("Character", s:white, "", "", "")
call s:hi("Comment", s:bright_black, "", "", "")
call s:hi("Conceal", "", "NONE", "", "")
call s:hi("Conditional", s:cyan, "", "", "")
call s:hi("Constant", s:white, "", "", "")
call s:hi("Decorator", s:white, "", "", "")
call s:hi("Define", s:cyan, "", "", "")
call s:hi("Delimiter", s:bright_white, "", "", "")
call s:hi("Exception", s:cyan, "", "", "")
call s:hi("Float", s:white, "", "", "")
call s:hi("Function", s:bright_white, "", "", "")
call s:hi("Identifier", s:bright_white, "", "NONE", "")
call s:hi("Include", s:white, "", "", "")
call s:hi("Keyword", s:cyan, "", "", "")
call s:hi("Label", s:white, "", "", "")
call s:hi("MatchParen", s:cyan, "NONE", "", "")
call s:hi("Number", s:bright_white, "", "", "")
call s:hi("Operator", s:bright_white, "", "NONE", "")
call s:hi("PreProc", s:white, "", "NONE", "")
call s:hi("Repeat", s:cyan, "", "", "")
call s:hi("Special", s:white, "", "", "")
call s:hi("SpecialChar", s:white, "", "", "")
call s:hi("SpecialComment", s:white, "", "", "")
call s:hi("Statement", s:cyan, "", "", "")
call s:hi("StorageClass", s:cyan, "", "", "")
call s:hi("String", s:green, "", "", "")
call s:hi("Structure", s:white, "", "", "")
call s:hi("Tag", s:white, "", "", "")
call s:hi("Todo", s:white, "NONE", "", "")
call s:hi("Type", s:bright_white, "", "NONE", "")
call s:hi("Typedef", s:white, "", "", "")
hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link Identifier Variable

" ---- Python ----
hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar
hi! link pythonTripleQuotes Comment

" ---- Javascript ----
hi! link jsVariableDef Variable
hi! link jsExport Keyword
hi! link jsImport Keyword

" ---- Git ----
call s:hi("GitGutterAdd", s:green, "NONE", "", "")
call s:hi("GitGutterDelete", s:red, "NONE", "", "")
call s:hi("GitGutterChange", s:yellow, "NONE", "", "")
