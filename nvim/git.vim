augroup select-commit-title
  autocmd!
  autocmd FileType *commit nnoremap <buffer> <CR><CR>
        \  <Cmd>silent! execute 'normal! ^w"zdiw"_dip"zPA: ' <bar> startinsert!<CR>
augroup END

