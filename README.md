# hb's dotfiles

## Screenshots

![Screenshot 1](/screenshot1.png?raw=true 'Screenshot 1')
![Screenshot 2](/screenshot2.png?raw=true 'Screenshot 2')
![Screenshot 3](/screenshot3.png?raw=true 'Screenshot 3')

## Machine + OS

- M2 MacBook Air / macOS Ventura 13.5

## Desktop

### [yabai](https://github.com/koekeishiya/yabai)

- Creates 7 workspaces (desktops)
- System Preferences > Mission Control > uncheck "Automatically rearrange Spaces based on most recent use".
- _Some advanced features of `yabai` [requires SIP to be disabled](https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection)._ _**However, disabling SIP will also disable Apple Pay on your Mac.**_ **For my setup, I left SIP enabled. My configs doesn't use any advanced feature from `yabai`.**

### [skhd](https://github.com/koekeishiya/skhd)

### [sketchybar](https://github.com/FelixKratz/SketchyBar)

- Icon font: [CaskaydiaCove Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode)
- Label font: [SF Pro](https://developer.apple.com/fonts/)

### [Alfred](https://www.alfredapp.com/)

- Theme: [Ayu dark](/manual-application/Alfred/Ayu-dark.alfredappearance)
- [iTerms integration](https://github.com/vitorgalvao/custom-alfred-iterm-scripts)

## Term + Shell + Package Manager

### [iTerm](https://iterm2.com/)

- Font: [CaskaydiaCove Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode)
- Color scheme: [Ayu dark](/manual-application/iTerm/Ayu-dark.itermcolors)
- Profile: [Window tweaks](/manual-application/iTerm/Default.json) (Transparency, Blur radius, No Title Bar style)

### [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

- Plugin manager: [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
- Plugins:
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
  - [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

### [Homebrew](https://brew.sh/)

## Editor

### [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#homebrew-on-macos-or-linux)

- Plugin manager + Starter template: [LazyVim](https://www.lazyvim.org/installation)
- Misc:
  - `python2`, `pip2`, `pynvim (pip2)`
  - `python3`, `pip3`, `pynvim (pip3)`
  - `ruby`, `gem`, `neovim (gem)`
  - `node`, `npm`, `neovim (npm)`
  - Run `:checkhealth` in `nvim`

## File + Web Browsers

### [Ranger](https://github.com/ranger/ranger)

- Install from HEAD commit instead of pre-built binary: `brew install --HEAD ranger`
- File preview dependencies (**bold** is recommended):
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
  - [djvulibre (`djvutxt`)](https://formulae.brew.sh/formula/djvulibre)
  - [exiftool](https://formulae.brew.sh/formula/exiftool)
  - [media-info (`mediainfo`)](https://formulae.brew.sh/formula/media-info)
  - [binutils (`readelf`)](https://command-not-found.com/readelf)
  - [rar (`unrar`)](https://formulae.brew.sh/cask/rar)
  - [p7zip (`7z`)](https://formulae.brew.sh/formula/p7zip)
  - [odt2txt](https://formulae.brew.sh/formula/odt2txt)
  - [w3m](https://formulae.brew.sh/formula/w3m)
  - [jq](https://formulae.brew.sh/formula/jq)

### [Firefox](https://www.mozilla.org/en-US/firefox/new/)

- [Firefox Onebar](https://codeberg.org/Freeplay/Firefox-Onebar) theme:
  - `onebar.disable-autohide-of-URLbar-icons : false`
  - `onebar.disable-centering-of-URLbar      : false`
  - `onebar.disable-https-truncate           : false`
  - `onebar.disable-single-tab               : true`
  - `onebar.hide-all-URLbar-icons            : true`
  - `onebar.hide-navigation-buttons          : false`
- [Layout and color tweaks](/manual-application/Firefox/userChrome.css) to match Ayu-dark color (Firefox Onebar included)

## Other tools

- [exa](https://the.exa.website/#installation)
- [fzf](https://github.com/junegunn/fzf#using-linux-package-managers)
- [bat](https://github.com/sharkdp/bat#on-arch-linux)
- [ripgrep (rg)](https://github.com/BurntSushi/ripgrep#installation)
- [ytop](https://github.com/cjbassi/ytop#installation) // fix
- [procs](https://github.com/dalance/procs#installation)

- `cat` > [`bat`](https://github.com/sharkdp/bat#on-macos-or-linux-via-homebrew)
- `find` > [`fd`](https://github.com/sharkdp/fd#on-macos)
- [`fzf`](https://github.com/junegunn/fzf#using-homebrew)
  - `fzf` `fd` integration in part of [shell config](/.zshrc)
- `grep` > [ripgrep (`rg`)](https://github.com/BurntSushi/ripgrep#installation)
- [`gtop`](https://github.com/aksakalli/gtop#installation)
- `ls` > [`exa`](https://github.com/ogham/exa#homebrew)
- `ps` > [`procs`](https://github.com/dalance/procs#homebrew)