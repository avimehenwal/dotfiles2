augroup myterm | au!
    au TermOpen * startinsert
augroup end

" visual mode block search replace
" vim.keymap.set("v", "<M-/>", "<esc>/\%V", {remap=false})
vnoremap <M-/> <Esc>/\%V
