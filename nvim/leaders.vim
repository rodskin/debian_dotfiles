" Copy all file
nnoremap <leader>y :call CopyAll()<CR>
" Open Terminal
nnoremap <leader>t :call OpenVTerm()<CR>
nnoremap <leader>T :call OpenHTerm()<CR>
" Buffers
nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab

nnoremap <leader>u g~iw
" NerdTree
"map <C-n> :NERDTreeToggle<CR>
nmap <silent> <F2> :NERDTreeToggle<CR>
" Config for fzf.vim (BONUS :D)
nnoremap <leader>f :Files<cr>

" Enable copilot
" nnoremap <leader>c :Copilot enable<CR>
" nnoremap <leader>d :Copilot disable<CR>
