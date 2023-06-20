" Plugins
call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'chrisbra/csv.vim'
    Plug 'moll/vim-bbye'
    Plug 'simeji/winresizer'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'simnalamburt/vim-mundo'

    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'machakann/vim-highlightedyank'
    Plug 'ap/vim-css-color'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'ryanoasis/vim-devicons'
    Plug 'itchyny/lightline.vim'
    Plug 'powerline/fonts'
    Plug 'chrisbra/SudoEdit.vim'
    Plug 'universal-ctags/ctags'

    " Required for vim 8
    Plug 'roxma/vim-hug-neovim-rpc'
    " Install this plugin
    Plug 'roxma/nvim-yarp', { 'do': 'pip install -r requirements.txt' }
    Plug 'beanworks/vim-phpfmt'
    Plug 'stephpy/vim-php-cs-fixer'
    " Whiteroom pour avoir le script en full screen
    Plug 'folke/zen-mode.nvim'
    Plug 'folke/twilight.nvim'

    " Auto complete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Tag bar
    Plug 'liuchengxu/vista.vim'

    " file types
    Plug 'mboughaba/i3config.vim'
    Plug 'wgwoods/vim-systemd-syntax'

    Plug 'kshenoy/vim-signature'

    " Manual
    Plug 'jez/vim-superman'

    " DATABASE
    Plug 'vim-scripts/dbext.vim'

    " TERMINAL
    Plug 'akinsho/toggleterm.nvim', {'tag' : '2.*'}

    " GOLANG
    Plug 'fatih/vim-go'

    " Illuminate
    Plug 'RRethy/vim-illuminate'

    " Calculate (LEADER a)
    Plug 'theniceboy/vim-calc'

    " indent guides
    Plug 'nathanaelkane/vim-indent-guides'

    " lazygit
    Plug 'kdheepak/lazygit.nvim'

    " COPILOT
    "Plug 'github/copilot.vim'
call plug#end()
