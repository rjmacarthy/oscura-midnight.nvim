" Oscura Midnight - A dark Vim/Neovim colorscheme ported from VS Code
" Author: rjmacarthy
" Created: March 26, 2025
" License: MIT

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "oscura-midnight"

" Define colors
let s:bg           = "#0B0B0F"
let s:fg           = "#E6E6E6"
let s:comment      = "#46474F"
let s:keyword      = "#9099A1"
let s:function     = "#E6E7A3"
let s:string       = "#E6E6E6"
let s:number       = "#F9B98C"
let s:constant     = "#F9B98C"
let s:type         = "#E6E7A3"
let s:error        = "#FF5C5C"
let s:warning      = "#D2D714"
let s:special      = "#54C0A3"
let s:visual       = "#333740"
let s:cursor       = "#FFCC00"
let s:selection    = "#5A5B63"
let s:linenum      = "#32333B"
let s:linenum_act  = "#E6E6E6"
let s:matchbracket = "#6E7048"
let s:search       = "#6E7048"
let s:diffadd      = "#1E2721"
let s:diffdelete   = "#2D1D22"
let s:diffchange   = "#1E2721"
let s:difftext     = "#303030"
let s:link         = "#479FFA"
let s:attr         = "#54C0A3"

" Helper function for setting highlight groups
function! s:h(group, fg, bg, attr)
  if a:fg != ""
    exec "hi " . a:group . " guifg=" . a:fg
  endif
  if a:bg != ""
    exec "hi " . a:group . " guibg=" . a:bg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr
  endif
endfunction

" Editor highlighting
call s:h("Normal", s:fg, s:bg, "")
call s:h("Cursor", s:bg, s:cursor, "bold")
call s:h("CursorLine", "", s:bg, "none")
call s:h("LineNr", s:linenum, "", "")
call s:h("CursorLineNr", s:linenum_act, "", "")
call s:h("VertSplit", s:linenum, s:bg, "")
call s:h("StatusLine", s:fg, "#232323", "none")
call s:h("Visual", "", s:visual, "")
call s:h("Search", s:bg, s:search, "")
call s:h("MatchParen", "", s:matchbracket, "")
call s:h("Error", s:error, "", "")
call s:h("WarningMsg", s:warning, "", "")
call s:h("DiffAdd", "", s:diffadd, "")
call s:h("DiffDelete", s:diffdelete, s:diffdelete, "")
call s:h("DiffChange", "", s:diffchange, "")
call s:h("DiffText", "", s:difftext, "")

" Syntax highlighting groups
call s:h("Comment", s:comment, "", "italic")
call s:h("Constant", s:constant, "", "")
call s:h("String", s:string, "", "")
call s:h("Number", s:number, "", "")
call s:h("Identifier", s:fg, "", "")
call s:h("Function", s:function, "", "")
call s:h("Statement", s:keyword, "", "")
call s:h("Operator", s:keyword, "", "")
call s:h("Keyword", s:keyword, "", "")
call s:h("Type", s:type, "", "")
call s:h("Special", s:special, "", "")
call s:h("Tag", s:attr, "", "")

" Terminal colors
if has("nvim")
  let g:terminal_color_0 = s:bg
  let g:terminal_color_1 = s:error
  let g:terminal_color_2 = s:function
  let g:terminal_color_3 = s:number
  let g:terminal_color_4 = s:special
  let g:terminal_color_5 = s:keyword
  let g:terminal_color_6 = s:attr
  let g:terminal_color_7 = s:fg
endif

" TreeSitter support (basic)
if has("nvim")
  hi! link @variable Identifier
  hi! link @constant Constant
  hi! link @function Function
  hi! link @keyword Keyword
  hi! link @type Type
  hi! link @string String
  hi! link @number Number
  hi! link @comment Comment
endif

" Done!

