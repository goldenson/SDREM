# Setup Mac OSX
Setup Mac OSX with Rails
# Setup Mac OS X

I'm in a hospital in Spain and my MacBook was stolen.

![Hospital Commit](http://f.cl.ly/items/432c1g1V0B3s1l1j0j2Z/hospital-commit.jpg)

Now I bought a new one and need to configure it. I have an external hard drive that backup everything using [Time Machine](http://www.apple.com/osx/apps/#timemachine), but I don't want all the crap I had in the old one.

## 1. Run Software Update

Make sure everything is up to date.

![Software Update](http://f.cl.ly/items/382O04411U0a1i0G2E3j/software-update.png)

## 2. Install [Xcode](https://developer.apple.com/xcode/) and its ["Command Line Tools"](https://developer.apple.com/downloads/index.action)

1. Go to App Store and install Xcode.
2. Open and accept the terms
3. Then go to the terminal and install "Command Line Tools":

  ```sh
  xcode-select --install
  ```

> Notice this only works for Mac OS X Mavericks (10.9). For earlier versions, continue to use the in-app download in Xcode.

## 3. Install Dotfiles

Visit [my Dotfiles repo](https://github.com/zenorocha/dotfiles) for instructions.

This will install some useful stuff like [zsh shell](http://www.zsh.org/) and lots of plugins using [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh). Besides that, it will also set a new theme and some useful aliases for the terminal.

## 4. Install Softwares

Many softwares can be installed through [homebrew-cask](https://github.com/phinze/homebrew-cask) which makes the process way simpler:

```sh
curl -L https://gist.githubusercontent.com/zenorocha/7159780/raw/9b9413ff1306d78be6447f4beddcf90e7e8b2b8a/softwares.sh | sh
```

Just make sure to move all apps from `/opt/homebrew-cask/Caskroom/` to `/Applications`. And to remove all installations files from `/Library/Caches/Homebrew`.

### What's included?

###### Browser

* [Firefox Aurora](http://www.mozilla.org/en-US/firefox/aurora/)
* [Chrome](https://www.google.com/intl/en/chrome/browser/)
* [Chrome Canary](https://www.google.com/intl/en/chrome/browser/canary.html)
* [Opera Next](http://www.opera.com/computer/next)

###### Development

* [Sublime Text 3](http://www.sublimetext.com/3) for code edit
* [FileZilla](https://filezilla-project.org/) for file transfer
* [Kaleidoscope](http://www.kaleidoscopeapp.com/) for file diff
* [iTerm 2](http://www.iterm2.com/#/section/home) for terminal client
* [Source Tree](http://www.sourcetreeapp.com/) for Git GUI
* [VirtualBox](https://www.virtualbox.org/) for virtual machines

###### Other

* [Alfred](http://www.alfredapp.com/) for workflow automation
* [Dropbox](https://www.dropbox.com/) for file syncing
* [Mou](http://mouapp.com/) for markdown editing
* [Skype](http://www.skype.com/en/) for international calls
* [Spotify](https://www.spotify.com) for music streaming
* [uTorrent](http://www.utorrent.com/) for torrent download

Unfortunately some apps aren't available through [homebrew-cask](https://github.com/phinze/homebrew-cask), so you need to install it **manually**.

###### App Store

* [Caffeine](http://lightheadsw.com/caffeine/) for keeping Mac awake
* [Codepoints](https://itunes.apple.com/us/app/codepoints/id499161264?mt=12) for special chars
* [Cloud](http://getcloudapp.com/) for file/link sharing
* [Dash](http://kapeli.com/) for documentation lookup
* [Divvy](http://mizage.com/divvy/) for window management
* [Evernote](http://evernote.com/) for presentation notes
* [Fantastical](http://flexibits.com/fantastical) for calendar interface to Google Calendar
* [Flamingo]https://itunes.apple.com/us/app/flamingo/id728181573) for messaging
* [Keynote](https://itunes.apple.com/us/app/keynote/id361285480) for presentations
* [LimeChat](http://limechat.net/mac/) for IRC
* [TweetDeck](https://itunes.apple.com/us/app/tweetdeck/id485812721?ls=1&mt=12) for tweet scheduling
* [Unarchiver](http://wakaba.c3.cx/s/apps/unarchiver) for ZIP, RAR, etc

###### Manually

* [1Password](https://agilebits.com/onepassword) for password management
* [Adobe Suite](http://www.adobe.com/products/creativecloud.html) for image editing
* [LICEcap](http://www.cockos.com/licecap/) for GIF recording
* [ScreenFlow](https://itunes.apple.com/us/app/screenflow-4/id573279886?mt=12) for screencast recording

## 5. Generate SSH keys for GitHub

Visit [GitHub's official guide](https://help.github.com/articles/generating-ssh-keys#platform-mac) for instructions.

From that point on you're going to be able to do some git operations with GitHub \o/

## 6. Set [Chrome Canary](https://www.google.com/intl/en/chrome/browser/canary.html) as default browser

1. Launch Safari
2. Apple ➜ Preferences
3. General ➜ Default Web Browser
4. Select “Chrome Canary” from the drop-down menu

## 7. Configure [Sublime Text](http://sublimetext.com/)

Visit [my Sublime Text preferences repo](https://github.com/zenorocha/sublime-preferences) for instructions.

There you can find the whole list of plugins, preferences and snippets.

## 8. Install [Alfred](http://alfredapp.com) Workflows

Visit [my Alfred workflow collection repo](https://github.com/zenorocha/alfred-workflows) for instructions.

## 9. Set [NPM](http://npmjs.org) user

```sh
npm adduser zenorocha
```

## 10. Download [IE test VMs](http://www.modern.ie/en-us/virtualization-tools) for [VirtualBox](https://www.virtualbox.org/)

These take a while to download, so maybe do it on a separate day as a background process.

```sh
# IE8 - XP
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE8_XP/IE8.XP.For.MacVirtualBox.ova"

# IE9 - Win7
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE9_Win7/IE9.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar,5.rar}"

# IE10 - Win8
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE10_Win8/IE10.Win8.For.MacVirtualBox.part{1.sfx,2.rar,3.rar}"
```

## 11. Profit!

:)

