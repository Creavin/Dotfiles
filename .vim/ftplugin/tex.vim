" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
set winaltkeys=no
let g:Tex_AdvancedMath = 1

" Ignore warnings and don't go to the error
let g:Tex_GotoError=0
let g:Tex_IgnoreLevel = 20

let g:Tex_IgnoredWarnings = 
\ "inputting\n" .
\ "Unused global option\n" .
\ "Marginpar on page\n" .
\ "No \\\\author given.\n" .
\ "Underfull\n" .
\ "Overfull\n" .
\ "specifier changed to\n" .
\ "You have requested\n" .
\ "Missing number, treated as zero.\n" .
\ "There were undefined references\n" . 
\ "LaTeX Font Warning\n" .
\ "Empty bibliography\n" . 
\ "Citation %.%# undefined"


" This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on



" Custom Shortcuts
call IMAP('a=', '&=', 'tex')

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat='pdf'
" let g:Tex_CompileRule_dvi='pdflatex --interaction=nonstopmode $*'
let g:Tex_CompileRule_pdf='pdflatex --interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'evince'


" Allows alt key to be used in Tilix
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50
