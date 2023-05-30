source ~/dotfiles/nvim/plugins.vim
source ~/dotfiles/nvim/theme.vim 


" don't use arrowkeys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" really, just don't
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

" use HJKL in insert mode
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj
"
"Paste from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
xnoremap <leader>p "+p
xnoremap <leader>P "+P

" déplacement prochain search
set ignorecase
set smartcase
nnoremap n nzz
nnoremap N Nzz


" Leader
nnoremap <space> <nop>
let mapleader = "\<space>" "leader is space

set clipboard+=unnamedplus
set noswapfile
" Hide buffer
set hidden
" ensure we always use this encoding for every file
set encoding=UTF-8
set fileencoding=UTF-8

" save undo trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

" Show substitution
set inccommand=nosplit

" highlight non ascii, suspect characters
au VimEnter,BufWinEnter * syn match ErrorMsg '[^\x00-\x7F€àÀâÂéÉèÈêÊëËîÎïÏôÔöÖûÛùÙüÜçÇœŒæÆ]'

" Config for chrisbra/csv.vim
augroup filetype_csv
    autocmd! 

    autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
    autocmd BufWritePre *.csv :%UnArrangeColumn
augroup END

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

let g:NERDTreeShowHidden=1
let g:NERDTreeShowBookmarks=1

" Use deoplete.
let g:deoplete#enable_at_startup = 1

let g:vista_default_executive = 'coc'


source ~/dotfiles/nvim/php.vim
source ~/dotfiles/nvim/coc.vim
source ~/dotfiles/nvim/term.vim
source ~/dotfiles/nvim/database.vim
source ~/dotfiles/nvim/shortcuts.vim
source ~/dotfiles/nvim/leaders.vim
source ~/dotfiles/nvim/git.vim
source ~/dotfiles/nvim/functions.vim