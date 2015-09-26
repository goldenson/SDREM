#!/bin/sh

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Verify homebrew installation
brew doctor

# Install cask
brew install caskroom/cask/brew-cask

# Install Iterm2
brew cask install iterm2

# git
brew install git

#open /Applications/iTerm.app

# Install oy-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Google Chrome
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

brew install macvim

curl -Lo- https://bit.ly/janus-bootstrap | zsh

# alfred
brew cask install alfred

# source tree
#brew cask install sourcetree

# github
#brew cask install github

exit 0
