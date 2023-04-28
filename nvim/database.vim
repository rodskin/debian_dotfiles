let g:dbext_default_profile_PP = 'type=MYSQL:user=napalm:passwd="cocacola\*666":host=172.16.210.81'
let g:dbext_default_profile = 'PP'

function Query() range
    " use a temp file for result
    let s:tmpfile = system('mktemp')
    " single line copy of query followed by blank line
    echo system('echo '.shellescape(join(getline(a:firstline,a:lastline)," ")).
    \ ' > '.s:tmpfile)
    echo system('echo >> '.s:tmpfile)
    " pipe through mysql into temp file
    echo system('echo '.shellescape(join(getline(a:firstline,a:lastline),"\n")).
    \ '| mysql --batch --silent --raw &>> '.s:tmpfile)
    " and open in new buffer
    exec 'ed '.s:tmpfile
endfunction
" select query and <F5>
vmap <F5> :DBExecRangeSQL<CR>
vmap <F6> :call Query()<CR>
