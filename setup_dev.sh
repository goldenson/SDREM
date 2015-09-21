#!/bin/sh

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Verify homebrew installation
brew doctor

# Install cask
brew install caskroom/cask/brew-cask

brew cask install google-chrome

# Installing Ruby
brew install rbenv ruby-build
# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc
rbenv install 2.2.3
rbenv global 2.2.3
ruby -v

# Configuring Git
git config --global color.ui true
echo "> What is your name ?"
read line
git config --global user.name "$line"
echo "> What is your email ?"
read line
git config --global user.email "$line"
ssh-keygen -t rsa -C "$line"
cat ~/.ssh/id_rsa.pub | pbcopy
echo "> Your ssh key was just pbcopied"
echo "> Wait 2 sec Github is opening"
sleep 2
open -a "Google Chrome" https://github.com/settings/ssh

# Setting Up Postgresql, (-L to follow redirects, -k if your certificate file is missing)
curl -LOk https://github.com/PostgresApp/PostgresApp/releases/download/9.4.4.1/Postgres-9.4.4.1.zip
unzip Postgres-9.4.4.1.zip
mv Postgres.app ~/Applications
echo -n 'export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin' >> ~/.zshrc


# Installing Rails
gem install rails -v 4.2.4
rbenv rehash
rails -v

# Installing heroku
# curl -LOk https://toolbelt.heroku.com/download/osx
# sudo installer -pkg osx -target /


# alfred
brew cask install alfred
brew cask alfred link

# textmate
brew cask install textmate

# atom
brew cask install atom

# iterm2
brew cask install iterm2

# google chrome
brew cask install google-chrome

# sequel pro
brew cask install sequel-pro

# cyberduck
brew cask install cyberduck

# spotify
brew cask install spotify

# java
brew cask install java

# intellij idea
brew cask install intellij-idea

# source tree
brew cask install sourcetree

# git
brew install git

# github
brew cask install github

# viscosity
brew cask install viscosity

# textmate bundle - gist
mkdir -p ~/Library/Application\ Support/Avian/Bundles
cd ~/Library/Application\ Support/Avian/Bundles
git clone git://github.com/hiltmon/Gist.tmbundle

exit 0
