#!/bin/sh

# Install xcode
#xcode-select --install

# Configuring Git
git config --global color.ui true
### Read two lines in one ?
echo "> What is your name ?"
read line
sleep 5
git config --global user.name "$line"
echo "> What is your email ?"
read line
sleep 5
git config --global user.email "$line"
ssh-keygen -t rsa -C "$line"
cat ~/.ssh/id_rsa.pub | pbcopy
echo "> Your ssh key was just pbcopied"
echo "> Wait 2 sec Github is opening, then paste your key on ssh settings"
sleep 2
open -a "Google Chrome" https://github.com/settings/ssh


# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Verify homebrew installation
brew doctor

# Install oy-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

### Stop here ?
open ~/Applications/iTerm.app

# Install cask
brew install caskroom/cask/brew-cask

# Install Iterm2
brew cask install iterm2

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

# Setting Up Postgresql, (-L to follow redirects, -k if your certificate file is missing)
curl -LOk https://github.com/PostgresApp/PostgresApp/releases/download/9.4.4.1/Postgres-9.4.4.1.zip
unzip Postgres-9.4.4.1.zip
mv Postgres.app ~/Applications
echo 'export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin' >> ~/.zshrc


# Installing Rails
gem install rails -v 4.2.4
rbenv rehash
rails -v

# Installing heroku
# curl -LOk https://toolbelt.heroku.com/download/osx
# sudo installer -pkg osx -target /

brew install macvim

curl -Lo- https://bit.ly/janus-bootstrap | zsh

### Add config files
echo 'color molokai
set guifont=Monaco:h11.00
set wildmenu

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=magenta
  elseif a:mode == 'r'
    hi statusline guibg=blue
  else
    hi statusline guibg=red
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=green

" default the statusline to green when entering Vim
hi statusline guibg=green

" strip trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

if has("gui_macvim") && has("gui_running")
  " Command-Shift-F on OSX
  nmap <D-S-F> :Ack<space>
endif' > ~/.gvimrc.local

echo 'call janus#disable_plugin('pep8')' > ~/.vimrc.before

echo 'set guioptions-=T

color molokai
set guifont=Monaco:h11.00
set wildmenu

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=magenta
  elseif a:mode == 'r'
    hi statusline guibg=blue
  else
    hi statusline guibg=red
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=green

" default the statusline to green when entering Vim
hi statusline guibg=green

" strip trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

if has("gui_macvim") && has("gui_running")
  " Command-Shift-F on OSX
  nmap <D-S-F> :Ack<space>
endif

nnoremap <silent> <leader>T :ClearCtrlPCache<cr>\|:CtrlP<cr>' > ~/vimrc.after

# alfred
brew cask install alfred

# QuickLook
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# source tree
#brew cask install sourcetree

# github
#brew cask install github

exit 0
