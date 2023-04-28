# For dotfiles
export XDG_CONFIG_HOME="$HOME/.config"
export DOTFILES="$HOME/dotfiles"

# For specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# For cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# For Favorite editor
export EDITOR="nvim"
export VISUAL="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# Maximum events for internal history
export SAVEHIST=10000

export PATH="$HOME/.local/bin/:$HOME/vendors/diff-so-fancy:$PATH"

export JIRA_LOGIN=''
export JIRA_USERNAME=''
export JIRA_URL=''
export JIRA_TOKEN=''
export WP_SCAN_API=''

if [ -f "$DOTFILES/zsh/.zshenv_private" ]; then
   source "$DOTFILES/zsh/.zshenv_private"
   export ZSH_PRIVATE_LOADED=1
fi
