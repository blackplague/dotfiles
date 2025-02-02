# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to datasets
export DATASETS="$HOME/development/datasets"
# Path to ML models
export MODELS="$HOME/development/models"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

export HISTSIZE=10000000
export SAVEHIST=10000000

setopt hist_ignore_all_dups

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="emacs -nw ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias jn="jupyter notebook"
alias jl="jupyter-lab"
alias pes="pipenv shell"
alias psh='poetry shell'
alias aglk='ssh-add ~/.ssh/laptop_gitlab'
# First docker id (actually always the last in the list)
alias fdid="docker ps | tail -n 1 | cut -d ' ' -f 1"
alias to_lower="tr '[A-Z]' '[a-z]'"

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/bin/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/bin/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/bin/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/bin/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Additions to PATH
#path+=("$HOME/bin/neo4j-desktop")
PATH="$HOME/bin/neo4j-desktop:$PATH"

#path+=("$HOME/.gem/jruby/2.5.0/bin")
PATH="$HOME/.gem/jruby/2.5.0/bin:$PATH"

#path+=('$HOME/.local/bin')
PATH="$HOME/.local/bin:$PATH"

#path+=('$HOME/.pyenv/bin')
PATH="$HOME/.pyenv/bin:$PATH"
#path+=('$HOME/.pyenv/shims')
PATH="$HOME/.pyenv/shims:$PATH"

# export to sub-processes (make it inherited by child processes)
export PATH

if [[ -a /etc/profile.d/rvm.sh ]]; then
    source "/etc/profile.d/rvm.sh"
fi

if [[ -d $HOME/.pyenv ]]; then
    # added by Webi for pyenv
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
