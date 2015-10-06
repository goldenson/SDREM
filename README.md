# Setup Dev Rails Env for Mac OSX

I'm faded to install my dev env each times I format my mac.

It grows a litle bit every day and I finally decided to improved my script skills with this installation.

Today I share my script with you
<!--![Maxime Orefice](https://media.licdn.com/mpr/mpr/shrink_100_100/AAEAAQAAAAAAAAL5AAAAJGJiYzI4NjgyLWM2Y2YtNDQ4MC05ZTRlLTkxNjRhYjMwOWU2OA.jpg)-->

I have an external hard drive that backup everything using [Time Machine](http://www.apple.com/osx/apps/#timemachine)

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

## 3. Install Dotfiles from [Excid3](https://github.com/excid3/dotfiles)

1. Click on Download ZIP
2. Copy and paste the 3 files inside the vim directory at the root of your environment
3. Open Iterm, Click on Preferences ➜ General ➜ Load preferences from a custom folder ➜ Import profile.itermcolors inside iterm directory
4. Go to zsh directory ➜ Go to themes ➜ Copy the excid3.zsh-theme inside ~/.oh-my-zsh/themes/
5. Go to zsh directory ➜ Copy zshrc content instead of your ~/.zshrc
6. Copy the gemrc inside your ~/.gem/
This will install some useful stuff like [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh). Besides that, it will also set a new theme and some useful aliases for the terminal.

## 4. Install Softwares

Many softwares can be installed through [homebrew-cask](https://github.com/phinze/homebrew-cask) which makes the process way simpler:

```sh
curl -L https://gist.githubusercontent.com/zenorocha/7159780/raw/9b9413ff1306d78be6447f4beddcf90e7e8b2b8a/softwares.sh | sh
```

Just make sure to move all apps from `/opt/homebrew-cask/Caskroom/` to `/Applications`. And to remove all installations files from `/Library/Caches/Homebrew`.

[Go Rails Setup] (https://gorails.com/setup/osx/10.10-yosemite)

### What's included?

###### Browser

* [Chrome](https://www.google.com/intl/en/chrome/browser/desktop/index.html)

###### Development

* [MacVim](https://github.com/b4winckler/macvim) for editing code
* [pgAdmin](http://www.pgadmin.org/download/macosx.php) for database administration
* [Postgres.app](http://postgresapp.com/) for using PostgreSQL
* [iTerm 2](http://www.iterm2.com/#/section/home) for terminal client
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads) for virtual machines
* [Oh my zsh](http://ohmyz.sh/) for pretty terminal
* [Heroku](https://toolbelt.heroku.com/osx) for deploying app easily
* [Github](https://github.com/) for hosting code

###### Other


Unfortunately some apps aren't available through [homebrew-cask](https://github.com/phinze/homebrew-cask), so you need to install it **manually**.

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

###### Manually

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
* [XQuartz](http://xquartz.macosforge.org/landing/) for using Wireshark on Yosemite

## 5. Generate SSH keys for GitHub

Visit [GitHub's official guide](https://help.github.com/articles/generating-ssh-keys#platform-mac) for instructions.

From that point on you're going to be able to do some git operations with GitHub \o/

## 6. Enjoy !

Please don't hesitate to contribute :)
