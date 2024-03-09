" Plugins
call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    " Colorschemes
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'joshdick/onedark.vim', { 'as': 'onedark'}
    Plug 'NLKNguyen/papercolor-theme', { 'as': 'papercolor' }
    Plug 'altercation/vim-colors-solarized', { 'as': 'solarized' }

    Plug 'chrisbra/csv.vim'
    " Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout.
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
    
    " Projects
    Plug 'leafOfTree/vim-project'
    " Plug 'ahmedkhalf/project.vim'
    " startify
    Plug 'mhinz/vim-startify'

    " auto rooter
    Plug 'airblade/vim-rooter'

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
    "Plug 'vim-scripts/dbext.vim'
    Plug 'tpope/vim-dadbod'
    Plug 'kristijanhusak/vim-dadbod-ui'
    Plug 'kristijanhusak/vim-dadbod-completion'

    " TERMINAL
    Plug 'akinsho/toggleterm.nvim', {'tag' : '2.*'}

    " GOLANG
    Plug 'fatih/vim-go'
    Plug 'meain/vim-jsontogo'

    " Illuminate (mettre en surbrillance les chaines identiques)
    Plug 'RRethy/vim-illuminate'

    " Calculate (LEADER a)
    Plug 'theniceboy/vim-calc'

    " indent guides
    Plug 'nathanaelkane/vim-indent-guides'

    " lazygit
    Plug 'kdheepak/lazygit.nvim'

    " Git Diff view
    Plug 'sindrets/diffview.nvim'

    " Signify pour voir les dernieres modifs git ?
    Plug 'mhinz/vim-signify'

    " MySQL formatter
    Plug 'mpyatishev/vim-sqlformat'

    " Rest console
    "Plug 'diepm/vim-rest-console'

    " http
    "Plug 'BlackLight/nvim-http'
    "Plug 'aquach/vim-http-client'
    "Plug 'diepm/vim-rest-console'
    Plug 'bayne/vim-dot-http'

    " COPILOT
    "Plug 'github/copilot.vim'
call plug#end()
