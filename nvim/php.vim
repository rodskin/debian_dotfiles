" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config
let g:php_cs_fixer_allow_risky = "yes"      " options: --allow-risky
" End of php-cs-fixer version 2 config params
let g:php_cs_fixer_php_path = "php-cs-fixer"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 0     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
let g:php_cs_fixer_ignore_env = 1               " ignore php version
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

