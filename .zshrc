# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
if [[ "$OSTYPE" == "darwin"* ]]; then
  export ZSH="/Users/i059151/.oh-my-zsh"
fi

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

HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

if [[ "$OSTYPE" == "darwin"* ]]; then
    export NEO_SDK="/Users/i059151/dev/neo-web-sdk/neo-java-web-sdk-3.124.9.3/tools"
    export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_281.jdk/Contents/Home"

    MY_JAVA_BIN="/Library/Java/JavaVirtualMachines/jdk1.8.0_281.jdk/Contents/Home/bin"
    XSA_CLI_PATH="/Users/i059151/dev/bin/xs/bin"
    export PATH=$XSA_CLI_PATH:$MY_JAVA_BIN:$NEO_SDK:$JAVA_HOME:$PATH

    export MAVEN_BIN=/Users/i059151/dev/bin/apache-maven-3.6.3/bin
    export PATH=$MAVEN_BIN:$PATH
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# OS Specific setup
if [[ "$OSTYPE" == "darwin"* ]]; then
    export PASSWD='gSdS8>%VxDrED}R5cr#,)>xL'
    # Allow the use of xpush from a command line
    if [ -f /Users/i059151/git/Projects/SportsOne/xpush/xpush.sh ];  then
        source /Users/i059151/git/Projects/SportsOne/xpush/xpush.sh
    fi

    export PATH=/Users/i059151/dev/bin/:$PATH
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

    # Deactivates Conda before running brew and then re-activate it
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
    # connect a docker container to /docker to inspect local volumes in docker
    alias dm-disk='docker run --rm -it -v /:/docker alpine:edge $@'
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
