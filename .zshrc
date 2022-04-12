# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/i059151/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="wedisagree"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git vi-mode)

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


export NEO_SDK="/Users/i059151/dev/neo-web-sdk/neo-java-web-sdk-3.124.9.3/tools"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_281.jdk/Contents/Home"

MY_JAVA_BIN="/Library/Java/JavaVirtualMachines/jdk1.8.0_281.jdk/Contents/Home/bin"
XSA_CLI_PATH="/Users/i059151/dev/bin/xs/bin"
export PATH=$XSA_CLI_PATH:$MY_JAVA_BIN:$NEO_SDK:$JAVA_HOME:$PATH

export MAVEN_BIN=/Users/i059151/dev/bin/apache-maven-3.6.3/bin
export PATH=$MAVEN_BIN:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(rbenv init -)"

export PASSWD='gSdS8>%VxDrED}R5cr#,)>xL'

# Currently have no installs for java 14 or 11
# alias j14="export JAVA_HOME=`/usr/libexec/java_home -v 14`; java -version"
# alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
#alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`"
#j8

export PATH=/Users/i059151/dev/bin/:$PATH

#alias kupdate='kubernikusctl auth init --username I059151 --user-domain-name monsoon3 --project-id a0a468d09734431eb49d001dc2f79a3d --auth-url https://identity-3.eu-nl-1.cloud.sap/v3 --url https://kubernikus.eu-nl-1.cloud.sap --name hana-rug'

# connect a docker container to /docker to inspect local volumes in docker
alias dm-disk='docker run --rm -it -v /:/docker alpine:edge $@'

# Allow the use of xpush from a command line
if [ -f /Users/i059151/git/Projects/SportsOne/xpush/xpush.sh ];  then
    source /Users/i059151/git/Projects/SportsOne/xpush/xpush.sh
fi

# add sbin to the path
export PATH="/usr/local/sbin:$PATH"

#export PYTHONPATH=/Users/i059151/opt/anaconda3/lib/python3.8/site-packages
alias path="echo $PATH | tr : '\n'"

# Initialize pyenv in the terminal
eval "$(pyenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/i059151/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/i059151/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/i059151/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/i059151/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Deactivates Conda before running brew and then re-activates it
brew () {
   local conda_env="$CONDA_DEFAULT_ENV"
   while [ "$CONDA_SHLVL" -gt 0 ]; do
       conda deactivate
   done
   command brew $@
   local brew_status=$?
   [ -n "$conda_env:+x" ] && conda activate "$conda_env"
   return "$brew_status"
}


alias notes="cd ~/Documents/vaults/notes"
alias plc="cd ~/git/Projects/PLC"
alias jenkins-library="cd ~/git/Projects/SAP/jenkins-library"
alias piper-library="cd ~/git/Projects/ContinuousDelivery/piper-library"
alias vim="nvim"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh