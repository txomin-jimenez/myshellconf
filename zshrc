# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pure"

autoload -U promptinit && promptinit
prompt pure

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow osx brew bower zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# configuracion de zshell a medida de cada maquina sacada a otro fichero
source ~/.zshrc00

if [ "$(uname)" = "Darwin" ]; then
  # Do something under Mac OS X platform        

  # Z (navegador de carpetas OSX ver.)
  . `brew --prefix`/etc/profile.d/z.sh

elif [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]; then
  # Do something under GNU/Linux platform
  
  # Z (navegador de carpetas Linux ver.)
  . ~/shell-apps/z/z.sh

elif [ "$(expr substr $(uname -s) 1 10)" = "MINGW32_NT" ]; then
  # Do something under Windows NT platform
fi

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin:~/instantclient_11_2"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LC_CTYPE=es_ES.UTF-8
export LANG=es_ES.UTF-8
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-twilight.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

#export TERM=xterm-256color


export EDITOR='vim'

#export SPYROTOUCH_BASE_SERVER_DEV=http://192.168.1.177:4444/api/base

export OCI_HOME=~/instantclient_11_2
export TNS_ADMIN=$OCI_HOME
export OCI_LIB_DIR=$OCI_HOME
export DYLD_LIBRARY_PATH=$OCI_LIB_DIR

export PATH=$HOME/.nodebrew/current/bin:$PATH

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias fuck='sudo $(fc -ln -1)'
alias count_files_here='find ./ -follow  -maxdepth 1 -type f | wc -l'
alias zz='source ~/.zshrc'
alias nolimit='ulimit -S -n 4096'
alias git_branches_clean='git fetch origin --prune'

