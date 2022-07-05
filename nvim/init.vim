source ~/dotfiles/nvim/plugins.vim
source ~/dotfiles/nvim/theme.vim

set clipboard+=unnamedplus

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set noswapfile
set ignorecase
set smartcase

" save undo trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

set number

" use 4 spaces instead of tab ()
" copy indent from current line when starting a new line

set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Show substitution
set inccommand=nosplit

nnoremap <space> <nop>
let mapleader = "\<space>"

nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab

" Config for chrisbra/csv.vim
augroup filetype_csv
    autocmd! 

    autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
    autocmd BufWritePre *.csv :%UnArrangeColumn
augroup END

" Config for fzf.vim (BONUS :D)
nnoremap <leader>f :Files<cr>
"
" NerdTree
"map <C-n> :NERDTreeToggle<CR>
nmap <silent> <F2> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Hide buffer
set hidden

set showmatch " show matching brackets/parenthesis
" ensure we always use this encoding for every
" file
set encoding=UTF-8
set fileencoding=UTF-8

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" suppression du highligh de recherche sur ESC
map <esc> :noh <CR>
