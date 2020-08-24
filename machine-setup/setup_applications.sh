#!/bin/bash

## Installing dev tools

# install xcode tools 
xcode-select --install

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

brew install wget 

# install python, which installs pip
brew install python3
brew install pipenv

# On new Macs, install SSL certificate 
# https://stackoverflow.com/questions/27835619/urllib-and-ssl-certificate-verify-failed-error
pip3 install certifi
/Applications/Python\ 3.6/Install\ Certificates.command

# install docker 
brew cask install docker

# install kubectl
# https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-macos
brew install kubernetes-cli

# install helm
brew install kubernetes-helm

# install gcloud sdk 
brew cask install google-cloud-sdk


## Installing applications 

# install browser 
brew cask install brave-browser
brew cask install google-chrome

brew cask install 1password

brew cask install tableplus

brew cask install iterm2

brew cask install visual-studio-code

brew cask install slack 

brew install --HEAD neovim

## Extras
brew cask install teensy 
brew cask install notion
# brew cask install istat-menus
brew cask install keyboard-maestro
brew cask install alacritty
brew cask install vivaldi

# a better resource monitor 
pip3 install bpytop --upgrade
## Install chrome extensions 
# sudo sh install_chrome_extensions.sh
