" Vim syntax file
" Language:     Logo
" Maintainer:   Kompowiec2 <chipteken@gmail.com>
" Filenames:    *.logo (?)
" Last Change:  2015 September 30

if !exists("main_syntax")
if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif
let main_syntax = 'cbot'
endif

syntax case match

"Polish commands
syn keyword LogoMove naprzód wstecz prawo lewo powtórz np ws pw lw hop
syn keyword LogoApp oto już cs pokaż czekaj
syn keyword LogoOther kwa[drat] trójkąt słuchaj powiedz lista
syn keyword LogoSet ustalKolPis ustalKolMal ustalGrubość ukp ukm ugp jdl [pod]nieś opu[ść] zam[aluj] okrąg koło
syn keyword LogoProg for nowaklasa  pisz[wiersz] nowy przypisz nazwij jdl

"English commands
syn keyword LogoMove forward back right left repeat fd bk lt rt arc[2]
syn keyword LogoApp to end cs repeat wait clearscreen
syn keyword LogoOther square triangle
syn keyword LogoPosition st ht Orientation pos setorientation setpos SetTurle
syn keyword LogoSet penup pendown penerase penpaint print /pen setpencolor setscreencolor setfloodcolor fill setpensize pu pd pe ppt setpc setsc setfc 
syn keyword LogoProg print for repeat output make name local localmake show type readword ifelse while random


if version >= 508 || !exists("did_xxd_syntax_inits")
  if version < 508
    let did_xxd_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

 HiLink LogoProg	Type
 HiLink LogoSet 	String
 HiLink LogoPosition	Statement
 HiLink LogoOther	PreProc
 HiLink LogoApp		Function
 HiLink LogoMove	Comment
 delcommand HiLink
endif
