# hb's dotfiles

## Screenshots

![Screenshot 1](/screenshot1.png?raw=true 'Screenshot 1')
![Screenshot 2](/screenshot2.png?raw=true 'Screenshot 2')
![Screenshot 3](/screenshot3.png?raw=true 'Screenshot 3')

## Machine + OS

- M2 MacBook Air / macOS Ventura 13.5

## Desktop

### [yabai](https://github.com/koekeishiya/yabai)

- System Preferences > Desktop and Dock (**bold** is required):
  - **Mission Control: uncheck "Automatically rearrange Spaces based on most recent use".**
- _Some advanced features of `yabai` [requires SIP to be disabled](https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection)._ _**However, disabling SIP will also disable Apple Pay on your Mac.**_ **For my setup, I left SIP enabled. My configs doesn't use any advanced feature from `yabai`.**

### [skhd](https://github.com/koekeishiya/skhd)

- System Preferences > Keyboard > Keyboard Shortcuts... (**bold** is required):
  - For each of the item on the left side bar > click "Restore Defaults"
  - **Mission Control > Make sure everything under Mission Control is checked (Move left/right, switch to desktop 1/2/etc.)**

### [sketchybar](https://github.com/FelixKratz/SketchyBar)

- Font: [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads)
- **Creates exactly 7 workspaces/desktops**
- System Preferences > Desktop and Dock (**bold** is required):
  - Dock: check "Automatically hide and show the Dock"
  - **Menu Bar: set "Automatically hide and show the menu bar" to "Always"**

### [Alfred](https://www.alfredapp.com/)

- Theme: [Gruvbox Dark (Hard)](/manual-application/Alfred/Gruvbox%20Dark%20(Hard).alfredappearance)
- [iTerms integration](https://github.com/vitorgalvao/custom-alfred-iterm-scripts)

## Terminal Emulator + Shell + Package Manager

### [iTerm](https://iterm2.com/)

- Font: [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads)
- Color scheme: [Gruvbox Dark (Hard)](/manual-application/iTerm/Gruvbox%20Dark%20(Hard).itermcolors)
- Profile: [Window tweaks](/manual-application/iTerm/Default.json) (Transparency, Blur radius, No Title Bar style)

### [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

- Plugin manager: [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
- Plugins:
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
  - [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

### [Homebrew](https://brew.sh/)

## Code Editor + Git Manager

### [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#homebrew-on-macos-or-linux)

- Plugin manager + Starter template: [LazyVim](https://www.lazyvim.org/installation)
- Misc:
  - Run `:checkhealth` in `nvim` and install all dependencies

### [Lazygit](https://github.com/jesseduffield/lazygit#homebrew)

## File Manager

### [Ranger](https://github.com/ranger/ranger)

- Install from HEAD commit instead of pre-built binary: `brew install --HEAD ranger`
- File preview dependencies (**bold** is required):
  - **[ImageMagick](https://formulae.brew.sh/formula/imagemagick)**
  - **[librsvg (`rsvg-convert`)](https://formulae.brew.sh/formula/librsvg)**
  - **[djvulibre (`ddjvu`)](https://formulae.brew.sh/formula/djvulibre)**
  - **[ffmpeg](https://formulae.brew.sh/formula/ffmpeg)**
  - **[ffmpegthumbnailer](https://formulae.brew.sh/formula/ffmpegthumbnailer)**
  - **[poppler (`pdftoppm`)](https://formulae.brew.sh/formula/poppler)**
  - [fontforge (`fontimage`)](https://formulae.brew.sh/formula/fontforge)
  - [pandoc](https://formulae.brew.sh/formula/pandoc)
  - [mu](https://formulae.brew.sh/formula/mu)
  - [xlsx2csv](https://github.com/dilshod/xlsx2csv): `pip3 install xlsx2csv`
  - [exiftool](https://formulae.brew.sh/formula/exiftool)
  - [media-info (`mediainfo`)](https://formulae.brew.sh/formula/media-info)
  - [binutils (`readelf`)](https://formulae.brew.sh/formula/binutils)
  - [rar (`unrar`)](https://formulae.brew.sh/cask/rar)
  - [p7zip (`7z`)](https://formulae.brew.sh/formula/p7zip)
  - [odt2txt](https://formulae.brew.sh/formula/odt2txt)
  - [w3m](https://formulae.brew.sh/formula/w3m)
  - [jq](https://formulae.brew.sh/formula/jq)

## Web Browser

### [Firefox](https://www.mozilla.org/en-US/firefox/new/)

- [Firefox Onebar](https://codeberg.org/Freeplay/Firefox-Onebar) theme with the following `about:config`:
  - `onebar.disable-autohide-of-URLbar-icons : false`
  - `onebar.disable-centering-of-URLbar      : false`
  - `onebar.disable-https-truncate           : false`
  - `onebar.disable-single-tab               : true`
  - `onebar.hide-all-URLbar-icons            : true`
  - `onebar.hide-navigation-buttons          : false`
- [Layout and color tweaks](/manual-application/Firefox/userChrome.css) to match Gruvbox Dark (Hard) color (Firefox Onebar included)
- System Preferences > Desktop and Dock > Default web browser: Firefox

## Other tools

- [`btop`](https://github.com/aristocratos/btop#installation)
- `cat` > [`bat`](https://github.com/sharkdp/bat#on-macos-or-linux-via-homebrew)
- `find` > [`fd`](https://github.com/sharkdp/fd#on-macos)
- [`fzf`](https://github.com/junegunn/fzf#using-homebrew)
  - `fzf` `fd` integration in part of [shell config](/.zshrc)
- `grep` > [ripgrep (`rg`)](https://github.com/BurntSushi/ripgrep#installation)
- `ls` > [`exa`](https://github.com/ogham/exa#homebrew)
- [`neofetch`](https://github.com/dylanaraps/neofetch/wiki/Installation#macos-homebrew)
- [pipes-sh (`pipes.sh`)](https://formulae.brew.sh/formula/pipes-sh)
- `ps` > [`procs`](https://github.com/dalance/procs#homebrew)
- [`tty-clock`](https://formulae.brew.sh/formula/tty-clock)
- [`unimatrix`](https://github.com/will8211/unimatrix): `pip3 install git+https://github.com/will8211/unimatrix.git`
