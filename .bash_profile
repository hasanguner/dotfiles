source ~/.bash_aliases
source ~/.bash_prompt
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/sbin
export MONO_GAC_PREFIX="/usr/local"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
    . $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
fi

export AWS_DEFAULT_REGION=eu-west-1

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

