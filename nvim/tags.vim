set tags=./tags,tags;$HOME

map <C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
