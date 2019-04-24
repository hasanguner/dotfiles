#!/usr/bin/env bash

brew update
brew upgrade

# Install Tmux
brew install tmux
brew install reattach-to-user-namespace

# Install command completion tools 
brew install bash-completion
brew install docker-compose-completion 
brew install grunt-completion
brew install vagrant-completion
brew install docker-completion
brew install gradle-completion
brew install pip-completion
brew install yarn-completion

# Install for fun
brew install figlet
brew install cowsay
brew install cmatrix

# Install JQ
brew install jq

# Install VirtualBox
brew cask install virtualbox

# Install Kubernetes
brew install kubernetes-cli
brew cask install minikube

# Install Terraform
brew install terraform

# Install awscli/awslogs etc.
brew install awscli
brew install awsebcli
brew install awslogs

# Install Node
brew install node

# Install wget
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install imagemagick
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup
