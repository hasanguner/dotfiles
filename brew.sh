#!/usr/bin/env bash

brew update
brew upgrade

# Install Tmux
brew install tmux
brew install reattach-to-user-namespace

# Install command completion tools 
brew install zsh-completions
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
#brew cask install virtualbox

# Install Kubernetes
#brew install kubernetes-cli
#brew cask install minikube

# Install Terraform
brew install terraform

# Install awscli/awslogs etc.
brew install awscli
brew install awsebcli
brew install awslogs

# Install Node
brew install node

# Install Go
brew install go

# Install wget
brew install wget

# Install nvim
brew install neovim

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
#brew install aircrack-ng
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install netpbm
#brew install nmap
#brew install pngcheck
#brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp # `tcpserver` etc.
#brew install xpdf
#brew install xz

# Install git tools
brew install git
brew install git-crypt
brew install git-lfs

# Install GNU Tools
brew install coreutils
brew install findutils
brew install gnu-indent
brew install gnu-sed
brew install gnutls
brew install grep
brew install gnu-tar
brew install gawk
brew install gnu-getopt

# Install other useful binaries.
brew install ack
brew install imagemagick
brew install lynx # text-based web browser
brew install p7zip
brew install pigz
brew install pv # pipeline-viewer
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli # zopfli compression
brew install aria2
brew install unrar

# Remove outdated versions from the cellar.
brew cleanup
