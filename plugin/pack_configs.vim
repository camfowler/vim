" Goyo
" ====

function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()




" dhruvasagar/vim-table-mode
" ==========================

let g:table_mode_corner='|'


" w0rp/ale
" ========
let g:ale_linters = {
\  'ruby': ['ruby'],
\  'javascript': ['eslint'],
\}
" Dont lint while I type, seriously, I'm not done yet.
let g:ale_lint_on_text_changed = 'never'

" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1



"
" tpope/vim-dispatch
" ==================
" After running a build, use cg to clean up the output to only list errors.
" nmap <leader>m :Make %\:=line('.')<CR><CR>
" nmap <leader>M :Make %<CR>
" See ~/.vim/ftdetect/rspec.vim for this binding.
" nmap <leader>s :Start bundle exec rspec %\:=line('.')<CR><CR>




"
" fatih/vim-go
" ============
let g:go_fmt_command = "goimports"



"
" kien/ctrlp.vim
" ==============

" map <leader>] :CtrlP<CR>
" Use The Silver Searcher
" https://github.com/ggreer/the_silver_searcher
" if executable('ag')
"   " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"   " ag is fast enough that CtrlP doesn't need to cache
"   let g:ctrlp_use_caching = 0
" endif



"
" thoughtbot/pick.vim
" ===================

" nnoremap <Leader>] :call PickFile()<CR>



"
" tpope/vim-markdown
" ==================

let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'bash']



"
" christoomey/vim-tmux-navigator
" ==============================

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>
