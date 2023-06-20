" Copy all file
nnoremap <leader>y :call CopyAll()<CR>

" Open Terminal
nnoremap <leader>t :call OpenVTerm()<CR>
nnoremap <leader>T :call OpenHTerm()<CR>

" Buffers
nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab

" Word to uppercase
nnoremap <leader>u g~iw

" Config for fzf.vim (BONUS :D)
nnoremap <leader>f :Files<CR>

" Config for calculation
nnoremap <leader>a :call Calc()<CR>

" guides indent
nnoremap <leader>ig :IndentGuidesToggle<CR>

" Show colors
nnoremap <leader>co :runtime syntax/colortest.vim

" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>

" Enable copilot
" nnoremap <leader>c :Copilot enable<CR>
" nnoremap <leader>d :Copilot disable<CR>
