set guioptions-=T  " no toolbar

set lines=100 columns=84

let notabs=1
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

if (&diff==0)
    :autocmd BufReadPost * tab ball
endif
