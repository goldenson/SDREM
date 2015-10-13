# SDREM : Setup Dev Rails Env for Mac OSX

**Installation made on OS X Yosemite 10.10.5**

I'm faded to install my dev env each times my mac is recovering.

I did a script that allows me to install all my useful software.

Today I share it with you !

# My personal backup

I have all my documents hosted on [Google Drive](https://drive.google.com) and my code on [Github](https://github.com).

I do a backup of my Mac every month using [Time Machine](http://www.apple.com/osx/apps/#timemachine) with an external hard drive.

I consider it's good to have a backup but it's better to have twice :).

## 1. Run Software Update

Make sure everything is up to date.

1. Click on the apple at the top left
2. Click on about this mac
3. Click on software update

## 2. Prerequisites [Xcode](https://developer.apple.com/xcode/) and its Command Line Tools

1. Go to the terminal and install "Command Line Tools", a little dialog box will appear

  ```sh
  xcode-select --install
  ```

2. Go to App Store and install Xcode.

### Preview of Macvim and iterm2 conf

I definitely like the colors and all the awesome stuffs. Thanks a lot to [@excid3](https://github.com/excid3) for that.

![My conf](http://f.cl.ly/items/3u3A1X2H1e3N3m150z3v/Image%202015-10-08%20at%2011.52.30%20AM.png)

## 3. Install Softwares

You can install softwares from [homebrew-cask](https://github.com/caskroom/homebrew-cask) if you like command lines or manually with a dmg files.

### What I use everyday ?

###### Browser

* [Chrome](https://www.google.com/intl/en/chrome/browser/desktop/index.html) for surfing on internet

###### Development

* [MacVim](https://github.com/b4winckler/macvim) for editing code
* [pgAdmin](http://www.pgadmin.org/download/macosx.php) for database administration
* [Postgres.app](http://postgresapp.com/) for using PostgreSQL
* [iTerm 2](http://www.iterm2.com/#/section/home) for terminal client
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads) for virtual machines
* [Oh my zsh](http://ohmyz.sh/) for pretty terminal
* [Heroku](https://toolbelt.heroku.com/osx) for deploying app easily
* [Github](https://github.com/) for hosting code

###### App Store

* [Caffeine](https://itunes.apple.com/us/app/caffeine/id411246225?l=en&mt=12) for keeping Mac awake
* [Slack](https://itunes.apple.com/us/app/slack/id803453959?l=en&mt=12) for communication with your team
* [ScreenFlow](https://itunes.apple.com/us/app/screenflow-5/id917790450?l=en&mt=12) for screencast recording
* [Navicat](https://itunes.apple.com/us/app/navicat-data-modeler-essentials/id532423082?l=en&mt=12) for data modeling
* [Twitter](https://itunes.apple.com/us/app/twitter/id409789998?l=en&mt=12) for keeping update
* [Skitch](https://itunes.apple.com/us/app/skitch-snap.-mark-up.-share./id425955336?l=en&mt=12) for productivity
* [Evernote](http://evernote.com/) for presentation notes
* [Keynote](https://itunes.apple.com/us/app/keynote/id409183694?l=en&mt=12) for presentations
* [Pages](https://itunes.apple.com/us/app/pages/id409201541?l=en&mt=12) for documents
* [Numbers](https://itunes.apple.com/us/app/numbers/id409203825?l=en&mt=12) for excel

###### Workflow

* [Alfred](http://www.alfredapp.com/) for workflow automation
* [Skype](http://www.skype.com/en/) for international calls
* [Viber](http://www.viber.com/en/products/mac) for chatting
* [Pow](http://pow.cx/) for launch your app without running a server
* [VLC](http://www.videolan.org/vlc/download-macosx.html) for videos watching
* [Transmission](http://www.transmissionbt.com/download/) for torrent download
* [Android File Transfert](https://www.android.com/filetransfer/) for android on Mac
* [SizeUp](http://www.irradiatedsoftware.com/sizeup/) for window management
* [iStat Menus](https://bjango.com/mac/istatmenus/) for monitoring system
* [Flux](https://justgetflux.com/) for resting your eyes
* [CloudApp](https://www.getcloudapp.com/download) for file/link sharing
* [Unified Remote](https://www.unifiedremote.com/download) for remote control of your Mac
* [Wireshark](https://www.wireshark.org/#download) for network analysis
* [XQuartz](http://xquartz.macosforge.org/landing/) for using Wireshark compatibility on Yosemite

## 4. Set up Ruby on Rails for Yosemite 10.10

1. You can find more informations about the following installation here : [Go Rails Setup] (https://gorails.com/setup/osx/10.10-yosemite)
2. This will install and configure : git, ssh key on github, homebrew, iterm2, brew-cask, google-chrome, rbenv (ruby version manager), ruby, postgreSQL, rails, alfred, some tools for quicklook and oh-my-zsh.
3. Get an internet connection
4. Go to your terminal and execute the script :

```sh
./setup_dev_osx.sh
```

## 5. Install Dotfiles from [Excid3](https://github.com/excid3/dotfiles)

I love [@exci3d](https://github.com/excid3/dotfiles) conf, and I recommend people to use it if they want to improve their productivity.

0. Go [here](https://github.com/excid3/dotfiles)
1. Click on Download ZIP
2. Copy and paste the 3 files inside the vim directory at the root of your environment
3. Open Iterm, Click on Preferences ➜ General ➜ Load preferences from a custom folder ➜ Import profile.itermcolors inside iterm directory
4. Go to zsh directory ➜ Go to themes ➜ Copy the excid3.zsh-theme inside ~/.oh-my-zsh/themes/
5. Go to zsh directory ➜ Copy zshrc content instead of your ~/.zshrc
6. Copy the gemrc inside your ~/.gem/

## 6. Enjoy and configure as you wish

Don't hesitate to contribute :)
