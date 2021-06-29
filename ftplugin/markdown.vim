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

iabbrev cc Cheers,Cameron
iabbrev calvc45 [Here is my availability](https://calendly.com/cameron-fowler/video-call-45), feel free to book a time that suits you best.
iabbrev calvc60 [Here is my availability](https://calendly.com/cameron-fowler/video-call-60), feel free to book a time that suits you best.
iabbrev calchch [Here is my availability](https://calendly.com/cameron-fowler/catch-up-christchurch), feel free to book a time that suits you best.
iabbrev calwlg [Here is my availability](https://calendly.com/cameron-fowler/catch-up-wellington), feel free to book a time that suits you best.

iabbrev <expr> dts strftime("%A %d %B")

nmap <leader>c :w !pandoc -t rtf -s \| pbcopy<CR>
vmap <leader>c :'<,'>w !pandoc -t rtf -s \| pbcopy<CR>
