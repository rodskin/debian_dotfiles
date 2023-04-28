colorscheme dracula     " awesome colorscheme
syntax enable           " enable syntax processing
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab sw=4 ts=4   
set shiftwidth=4
set autoindent          " copy indent from current line when starting a new line
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set cursorcolumn        " highlight current column
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set splitbelow
set splitright
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" font
set guifont=ProggyCleanTT\ 12
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ====================
" Touche TAB améliorée
" ====================
" decalage en mode visuel
vmap <TAB> >gv
vmap <S-TAB> <gv
" F3 - Line numbers toggle
map <F3> :set nonumber!<Enter>
imap <F3> :set nonumber!<Enter>
map <F4> :set relativenumber!<Enter>
imap <F4> :set relativenonumber!<Enter>

nmap - :vertical resize -5!<Enter>
nmap + :vertical resize +5!<Enter>
