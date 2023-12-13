"let g:dbext_default_profile_PP = 'type=MYSQL:user="$BDD_PREPROD_USER":passwd="$BDD_PREPROD_PASSWD":host="$BDD_PREPROD_HOST"'
"let g:dbext_default_profile = 'PP'
"let g:dbext_default_window_use_horiz = 0  " Use vertical split
"let g:dbext_default_window_width = 20
"let g:dbext_default_window_increment = 300
"
"function Query() range
    "" use a temp file for result
    "let s:tmpfile = system('mktemp')
    "" single line copy of query followed by blank line
    "echo system('echo '.shellescape(join(getline(a:firstline,a:lastline)," ")).
    "\ ' > '.s:tmpfile)
    "echo system('echo >> '.s:tmpfile)
    "" pipe through mysql into temp file
    "echo system('echo '.shellescape(join(getline(a:firstline,a:lastline),"\n")).
    "\ '| mysql --batch --silent --raw &>> '.s:tmpfile)
    "" and open in new buffer
    "exec 'ed '.s:tmpfile
"endfunction
"" select query and <F5>
"vmap <F5> :DBExecRangeSQL<CR>
"vmap <F6> :call Query()<CR>

let g:db_ui_save_location = '~/.db_ui'
let g:dbs = [
\ { 'name': 'pp', 'url': "mysql://$BDD_PREPROD_USER:$BDD_PREPROD_PASSWD@$BDD_PREPROD_HOST" },
\ ]

nmap <F6> :DBUIToggle<CR>
