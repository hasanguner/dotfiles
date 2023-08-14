#!/usr/bin/bash

# Alias's for change directory aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
alias cd..="cd .."

alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dp="cd ~/Developer"
alias o="open"
alias oo="open ."

# Alias's for multiple directory listing commands
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias lsa="ls -lah"

# Alias's for chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# Alias's for search running processes
alias p="ps aux | grep "
alias topcpu="ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

# Alias's for search files in the current folder
alias f="find . | grep "

# Alias's for IP
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\  -f2"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Alias's for Git
alias wip="git commit -m 'WIP'"
alias grom="git rebase -i origin/master"
alias gpso="git push origin \$(git rev-parse --abbrev-ref HEAD)"
alias gplo="git pull origin \$(git rev-parse --abbrev-ref HEAD)"
alias gpsof="git push -f origin \$(git rev-parse --abbrev-ref HEAD)"
alias gst="git status"
alias gbr="git branch"
alias glol="git log --oneline"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias ga="git add ."
alias grs="git reset"
alias grsh="git reset HEAD~1"
alias grshr="git reset --hard"
alias gf="git fetch"

# Alias's for Docker
alias dcup="docker-compose up -d"
alias dclog="docker-compose logs -t -f"
alias dcps="docker-compose ps"
alias di="docker images"
alias dr="docker run --rm -it"
alias dx="docker exec -it"
alias db="docker build -t"
alias dpsa="docker ps -a"
alias din="docker inspect"
alias docker-cleanup="docker-cleanup-volumes;docker-cleanup-images"
alias docker-cleanup-volumes="docker volume ls -qf dangling=true | xargs docker volume rm"
alias docker-cleanup-images="docker images -f dangling=true -q | xargs docker rmi"

# Alias's for Kubernetes
alias k="kubectl"
alias kgn="kubectl get nodes"
alias kgp="kubectl get pods"
alias krr="kubectl rollout restart"
alias mk="minikube"

# Alias's for Brew
alias bup="brew update && brew upgrade && brew cleanup"

# Alias's for JetBrains IDEAs shortcuts
alias goland='open $HOME/Applications/GoLand.app'
alias idea='open $HOME/Applications/IntelliJ\ IDEA\ Ultimate.app'
alias datagrip='open $HOME/Applications/DataGrip.app'
alias androidstudio='open $HOME/Applications/Android\ Studio.app'

# Alias's for Misc
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# Alias's for Geek
alias antalya="curl wttr.in/antalya"
alias ankara="curl wttr.in/ankara"
alias stockholm="curl wttr.in/stockholm"
