""""""""""""""""""""""""
"  Nazca Color Scheme  "
""""""""""""""""""""""""
" By: Jose Elera Campana - https://github.com/jelera
" Based: on ir_black color scheme More at: http://blog.infinitered.com/entries/show/8
" More about Nazca here : http://en.wikipedia.org/wiki/Nazca
"
" Tweak for Web Development, feel free to modified and share it.
"
" Support for 256 Color Terminal and Full Color graphical Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ********************************************************************************
" Standard colors used in all ir_black themes:
" Note, x:x:x are RGB values
"
"  normal: #f6f3e8
"
"  string: #A8FF60  168:255:96
"    string inner (punc, code, etc): #00A0A0  0:160:160
"  number: #FF73FD  255:115:253
"  comments: #7C7C7C  124:124:124
"  keywords: #96CBFE  150:203:254
"  operators: white
"  class: #FFFFB6  255:255:182
"  method declaration name: #FFD2A7  255:210:167
"  regular expression: #E9C062  233:192:98
"    regexp alternate: #FF8000  255:128:0
"    regexp alternate 2: #B18A3D  177:138:61
"  variable: #C6C5FE  198:197:254
"
" Misc colors:
"  red color (used for whatever): #FF6C60   255:108:96
"     light red: #FFB6B0   255:182:176
"
"  brown: #E18964  good for special
"
"  lightpurpleish: #FFCCFF
"
" Interface colors:
"  background color: black
"  cursor (where underscore is used): #FFA560  255:165:96
"  cursor (where block is used): white
"  visual selection: #1D1E2C
"  current line: #151515  21:21:21
"  search selection: #07281C  7:40:28
"  line number: #3D3D3D  61:61:61


" ********************************************************************************
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #A8FF60     #CEFFAB
" Yellow    #FFFFB6     #FFFFCB
" Blue      #96CBFE     #FFFFCB
" Magenta   #FF73FD     #FF9CFE
" Cyan      #C6C5FE     #DFDFFE
" White     #EEEEEE     #FFFFFF


" ********************************************************************************
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "nazca"

" General colors
hi Normal       ctermfg=7     ctermbg=233  cterm=NONE
hi NonText      ctermfg=239   ctermbg=16   cterm=NONE

hi Cursor       ctermfg=0     ctermbg=11   cterm=REVERSE
hi LineNr       ctermfg=241   ctermbg=16   cterm=NONE

hi VertSplit    ctermfg=234   ctermbg=234  cterm=NONE
hi StatusLine   ctermfg=85    ctermbg=234  cterm=NONE
hi StatusLineNC ctermfg=0     ctermbg=234  cterm=BOLD

hi FoldColumn   ctermfg=248   ctermbg=238  cterm=NONE
hi Folded       ctermfg=248   ctermbg=238  cterm=NONE
hi Title        ctermfg=7     ctermbg=NONE cterm=NONE
hi TabLine      ctermfg=254   ctermbg=238  cterm=NONE
hi TabLineSel   ctermfg=231   ctermbg=233  cterm=NONE
hi TabLineFill  ctermfg=249   ctermbg=242  cterm=NONE
hi Visual       ctermfg=NONE  ctermbg=237  cterm=NONE

hi SpecialKey   ctermfg=239   ctermbg=0    cterm=NONE

hi WildMenu     ctermfg=28    ctermbg=11   cterm=NONE
hi PmenuSbar    ctermfg=0     ctermbg=15   cterm=NONE

hi Error        ctermfg=15    ctermbg=88   cterm=NONE
hi ErrorMsg     ctermfg=15    ctermbg=203  cterm=BOLD
hi WarningMsg   ctermfg=15    ctermbg=203  cterm=BOLD

" git gutter
hi SignColumn ctermfg=239   ctermbg=16   cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg      ctermfg=0 ctermbg=189 cterm=BOLD

hi ColorColumn  ctermfg=NONE ctermbg=16 cterm=NONE
hi CursorLine   ctermfg=NONE ctermbg=16 cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=233 cterm=BOLD
hi MatchParen   ctermfg=7    ctermbg=243 cterm=BOLD
hi Pmenu        ctermfg=7    ctermbg=238 cterm=NONE
hi PmenuSel     ctermfg=0    ctermbg=186 cterm=NONE
hi Search       ctermfg=231  ctermbg=24 cterm=underline

" Syntax highlighting
hi Comment     ctermfg=242 ctermbg=NONE cterm=NONE
hi String      ctermfg=156 ctermbg=NONE cterm=NONE
hi Number      ctermfg=175 ctermbg=NONE cterm=NONE

hi Keyword     guifg=#96CBFE guibg=NONE    gui=NONE   ctermfg=117 ctermbg=NONE cterm=NONE
hi PreProc     guifg=#96CBFE guibg=NONE    gui=NONE   ctermfg=117 ctermbg=NONE cterm=NONE
hi Conditional guifg=#6699CC guibg=NONE    gui=NONE   ctermfg=68  ctermbg=NONE cterm=NONE

hi Todo        guifg=#890a0a guibg=#f2f773 gui=BOLD   ctermfg=88  ctermbg=227  cterm=BOLD
hi Constant    guifg=#99CC99 guibg=NONE    gui=ITALIC ctermfg=114 ctermbg=NONE cterm=NONE

hi Identifier  guifg=#C6C5FE guibg=NONE    gui=NONE   ctermfg=189 ctermbg=NONE cterm=NONE
hi Function    guifg=#FFD2A7 guibg=NONE    gui=BOLD   ctermfg=223 ctermbg=NONE cterm=BOLD
hi Type        guifg=#FFFFB6 guibg=NONE    gui=BOLD   ctermfg=229 ctermbg=NONE cterm=BOLD
hi Statement   guifg=#6699CC guibg=NONE    gui=NONE   ctermfg=68  ctermbg=NONE cterm=NONE

hi Special     guifg=#E18964 guibg=NONE    gui=NONE   ctermfg=173 ctermbg=NONE cterm=NONE
hi Delimiter   guifg=#00A0A0 guibg=NONE    gui=NONE   ctermfg=37  ctermbg=NONE cterm=NONE
hi Operator    guifg=#E8AC6F guibg=NONE    gui=NONE   ctermfg=179 ctermbg=NONE cterm=NONE

hi DiffAdd     cterm=BOLD ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
hi DiffDelete  cterm=BOLD ctermfg=9 ctermbg=17 gui=none guifg=bg guibg=Red
hi DiffChange  cterm=BOLD ctermfg=190 ctermbg=17 gui=none guifg=bg guibg=Red
hi DiffText    cterm=BOLD ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

hi clear SpellBad
hi SpellBad     cterm=underline ctermfg=red

" Special for Ruby
hi  rubyRegexp                 ctermfg=137 ctermbg=NONE cterm=NONE
hi  rubyRegexpDelimiter        ctermfg=208 ctermbg=NONE cterm=NONE
hi  rubyEscape                 ctermfg=15  ctermbg=NONE cterm=NONE
hi  rubyInterpolationDelimiter ctermfg=37  ctermbg=NONE cterm=NONE
hi  rubyControl                ctermfg=68  ctermbg=NONE cterm=NONE
"hi rubyGlobalVariable         ctermfg=225 ctermbg=NONE cterm=NONE
hi  rubyStringDelimiter        ctermfg=238 ctermbg=NONE cterm=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

hi link rubyClass             Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type


" Special for Java
" hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier
hi link javaCommentTitle      javaDocSeeTag
hi link javaDocTags           javaDocSeeTag
hi link javaDocParam          javaDocSeeTag
hi link javaDocSeeTagParam    javaDocSeeTag

hi  javaDocSeeTag guifg=#CCCCCC guibg=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
hi  javaDocSeeTag guifg=#CCCCCC guibg=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
"hi javaClassDecl guifg=#CCFFCC guibg=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE


" Special for XML
hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Identifier

" Special for HTML
hi htmlH1 guifg=#de675c   ctermfg=167
hi htmlLink guifg=#c777ff ctermfg=177
hi link htmlTag         Keyword
hi link htmlTagName     Conditional
hi link htmlEndTag      Identifier
hi link htmlH2 htmlH1
hi link htmlH3 htmlH1
hi link htmlH4 htmlH1
hi link htmlItalic htmlBold

" Special for CSS
hi cssTagName guifg=#70a8dd gui=BOLD  ctermfg=74 cterm=BOLD
hi cssBoxProp guifg=#d0af76  gui=NONE  ctermfg=180 gui=NONE
hi link cssColorProp cssBoxProp
hi link cssFontProp cssBoxProp
hi link cssTextProp cssBoxProp
hi cssPseudoClassId guifg=#9ccfdd gui=italic ctermfg=152 cterm=NONE
hi cssIdentifier    guifg=#a2ddb8 gui=italic ctermfg=151 cterm=NONE

" Special for Markdown
hi markdownUrl guifg=#e48944 ctermfg=173
hi markdownCode guifg=#a7bee4   gui=BOLD ctermfg=151 cterm=BOLD
hi markdownCodeBlock guifg=#c5b1e4 ctermfg=182

" Special for Javascript
" TODO:  - Add colors to the cterm
hi javaScriptBrowserObjects       guifg=#DBB6D2      gui=italic    ctermfg=182 cterm=NONE
hi jsGlobalObjects                guifg=#C6C5FE      gui=BOLD      ctermfg=189 cterm=BOLD

hi javaScriptDOMObjects           guifg=#DBB6D2      gui=BOLD      ctermfg=182 cterm=BOLD
hi javaScriptDOMMethods           guifg=#D4FA9B      ctermfg=192
hi link javaScriptDOMProperties Keyword

hi javaScriptAjaxObjects          guifg=#5d91d3      gui=underline ctermfg=68  cterm=UNDERLINE
hi javaScriptAjaxMethods          guifg=#6699CC      ctermfg=68
hi javaScriptAjaxProperties       guifg=#FF9494      ctermfg=210

hi javaScriptFuncName             guifg=#B5E4F7      ctermfg=153
hi javaScriptHtmlElemProperties   guifg=#FF9494      ctermfg=210
hi javaScriptEventListenerKeyword guifg=#6699CC      ctermfg=68

hi link javaScriptNumber      Number
hi link javaScriptPropietaryObjects javaScriptAjaxObjects

" Special for Python
"hi  link pythonEscape         Keyword


" Special for CSharp
hi  link csXmlTag             Keyword

" Special for PHP
hi phpDefine  guifg=#ffc795    gui=BOLD ctermfg=209 cterm=BOLD
