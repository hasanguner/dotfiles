#!/usr/bin/bash

# Shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
alias cd..="cd .."
alias lsa="ls -lah"

alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dp="cd ~/Developer"
alias o="open"
alias oo="open ."

# IP
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\  -f2"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Git
alias wip="git commit -m 'WIP'"
alias grom="git rebase -i origin/master"
alias gpo="git push origin $(git rev-parse --abbrev-ref HEAD)"
alias gpof="git push -f origin $(git rev-parse --abbrev-ref HEAD)"

# Docker
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

# Misc
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

