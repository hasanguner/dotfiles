source ~/.bash_aliases
source ~/.bash_prompt
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/sbin
export MONO_GAC_PREFIX="/usr/local"

export AWS_DEFAULT_REGION=eu-west-1

FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
autoload -Uz compinit
compinit

export SDKMAN_DIR="/Users/hasan.guner/.sdkman"
[[ -s "/Users/hasan.guner/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/hasan.guner/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export ENABLE_MEM_LIMIT=true
export PATH="/usr/local/opt/terraform@0.13/bin:$PATH"
export DOCKER_PATH=$(type -p docker)

