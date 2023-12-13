set tags=./tags,tags;$HOME

map <C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


function! ShowConstantValue()
    echo "test"
    let keyword = expand("<cword>")
    let tagfile = findfile("tags", ".;")
    if empty(tagfile)
        echo "Fichier de tags introuvable."
        return
    endif
    let cmd = "grep '^" . keyword . "\t' " . tagfile
    let result = system(cmd)
    let lines = split(result, "\n")
    for line in lines
        let parts = split(line, "\t")
        if len(parts) >= 4
            let filename = parts[1]
            let linenumber = parts[2]
            let tagname = parts[0]
            let tagtype = parts[3]
            if tagtype == "c"
                let cmd = "grep -A1 '" . tagname . " = ' " . filename
                let code = system(cmd)
                let code_lines = split(code, "\n")
                for code_line in code_lines
                    echohl Title
                    echomsg code_line
                    echohl None
                endfor
                return
            endif
        endif
    endfor
    echo "La valeur de la constante n'a pas été trouvée."
endfunction

nmap <leader><[> :call ShowConstantValue()

