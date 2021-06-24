setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
setlocal spell

" This turns off physical line wrapping (ie: automatic insertion of newlines)
setlocal textwidth=0 wrapmargin=0
" Otherwise use
" set textwidth=80

set linebreak breakindent

" Conceal even cursor is on that line in normal mode.
" set concealcursor=n
" Conceal characters unless there is a defined replacement.
set conceallevel=2

setlocal includeexpr=substitute(v:fname,'^/','','')
