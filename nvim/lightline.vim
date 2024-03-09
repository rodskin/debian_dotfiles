let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'filename', 'readonly', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'gitbranchrod': 'LightlineGitBranch',
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B',
      \   'readonly': '%{&readonly?"":""}',
      \   'gitbranch': '%{LightlineGitBranch()}',
      \ },
      \ }

" Fonction pour obtenir le nom de la branche Git
function! LightlineGitBranch()
  "let branchname = system('git rev-parse --abbrev-ref HEAD 2>/dev/null')
  let branchname = system('git symbolic-ref -q --short HEAD 2>/dev/null')[:-2]
  "let branchname = gitbranch#name()
  let branchname = FugitiveHead()
  let text_color = 'white'
  let background_color = branchname ==# 'main' ? 'red' : 'green'
  return '#' . text_color . '#' . background_color . '#' . branchname . ''
  return empty(branchname) ? '' : branchname
endfunction

" Ajout de la condition pour le fond rouge si la branche est "main"
function! LightlineColorScheme()
  let l:branchname = LightlineGitBranch()
  return l:branchname ==# 'main' ? 'red' : ''
endfunction

" Application de la condition à Lightline
" let g:lightline.colorscheme = 'custom_lightline'

let g:lightline#custom#custom_lightline = {
  \ 'normal': {
  \   'left': [ ['mode', 'paste'], ['gitbranch', 'readonly', 'filename', 'modified'] ],
  \   'right': [ ['lineinfo'], ['percent'], ['filetype'] ],
  \ },
  \ 'inactive': {
  \   'left': [ ['gitbranch'] ],
  \   'right': [ ['lineinfo'], ['percent'], ['filetype'] ],
  \ },
  \ 'component': {
  \   'gitbranch': '%#LightlineGitBranchBackground#%#LightlineGitBranchText#%{LightlineGitBranch()}%*%*',
  \ },
  \}
