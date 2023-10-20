# hb's dotfiles

_Notes: this repo contains submodules, use `--recurse-submodules` when cloning this repo to get all the modules:_

```bash
git clone --recurse-submodules https://github.com/hbthen3rd/dotfiles.git
# or
git clone --recurse-submodules git@github.com:hbthen3rd/dotfiles.git
```

## Screenshots

| | | | |
| :- | :-: | :-: | :-: |
| Tiling | ![btop, neofetch, tty-clock, unimatrix, pipes.sh](/screenshots/tiling1.png?raw=true 'btop, neofetch, tty-clock, unimatrix, pipes.sh') `btop`, `neofetch`, `tty-clock`, `unimatrix`, `pipes.sh` | ![lazygit, neovim, bat](/screenshots/tiling2.png?raw=true 'lazygit, neovim, bat') `lazygit`, `neovim`, `bat` | ![Firefox, ranger, eza, Alfred](/screenshots/tiling3.png?raw=true 'Firefox, ranger, eza, Alfred') Firefox, `ranger`, `eza`, Alfred |
| Code Editor | ![neovim](/screenshots/code_neovim.png?raw=true 'neovim') `neovim` | ![Neovide](/screenshots/code_neovide.png?raw=true 'Neovide') Neovide | ![Visual Studio Code](/screenshots/code_vscode.png?raw=true 'Visual Studio Code') Visual Studio Code |
| File Manager | ![ranger](/screenshots/file_ranger.png?raw=true 'ranger') `ranger` | ![Finder](/screenshots/file_finder.png?raw=true 'Finder') Finder | - |
| Web Browser | ![Firefox](/screenshots/web_firefox.png?raw=true 'Firefox') Firefox | ![Arc](/screenshots/web_arc.png?raw=true 'Arc') Arc | - |

## Machine + OS

- M2 MacBook Air / macOS Sonoma 14.0

## Desktop

### [Gruvbox Wallpapers](https://github.com/AngelJumbo/gruvbox-wallpapers)

### [yabai](https://github.com/koekeishiya/yabai)

- System Preferences > Desktop and Dock (**bold** is required):
  - **Mission Control: uncheck "Automatically rearrange Spaces based on most recent use"**
- _Some advanced features of `yabai` [requires SIP to be disabled](https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection)._ _**However, disabling SIP will also disable Apple Pay on your Mac.**_ **For my setup, I left SIP enabled. My configs doesn't use any advanced feature from `yabai`**

### [sketchybar](https://github.com/FelixKratz/SketchyBar)

- Font: [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads)
- **Creates exactly 7 workspaces/desktops**
- System Preferences > Desktop and Dock (**bold** is required):
  - Dock: check "Automatically hide and show the Dock"
  - **Menu Bar: set "Automatically hide and show the menu bar" to "Always"**

### [skhd](https://github.com/koekeishiya/skhd)

- System Preferences > Keyboard > Keyboard Shortcuts... (**bold** is required):
  - For each of the item on the left side bar > click "Restore Defaults"
  - **Mission Control > Make sure everything under Mission Control is checked (Move left/right, switch to desktop 1/2/etc.)**

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

## Code Editor

### [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#homebrew-on-macos-or-linux) + [Neovide](https://neovide.dev/installation.html#homebrew)

- Plugin manager + Starter template: [LazyVim](https://www.lazyvim.org/installation)
  - [`rg`](https://github.com/BurntSushi/ripgrep#installation)
  - [`fd`](https://github.com/sharkdp/fd#on-macos)
  - [`lazygit`](https://github.com/jesseduffield/lazygit#homebrew)
- Misc:
  - Run `:checkhealth` and install all dependencies
  - [pynvim](https://github.com/neovim/pynvim#install)
  - [neovim ruby](https://github.com/neovim/neovim-ruby#installation)
  - [neovim node](https://github.com/neovim/node-client#installation)
  - [neovim perl](https://neovim.io/doc/user/provider.html#provider-perl)

### [Visual Studio Code](https://code.visualstudio.com/)
  - Fonts:
    - Editor: [Cascadia Code](https://github.com/microsoft/cascadia-code/releases/latest)
    - Terminal: [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads)
  - [Gruvbox Theme](https://marketplace.visualstudio.com/items?itemName=jdinhlife.gruvbox)
  - [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
  - [Fluent Icons](https://marketplace.visualstudio.com/items?itemName=miguelsolorio.fluent-icons)
  - [Apc Customize UI++](https://marketplace.visualstudio.com/items?itemName=drcika.apc-extension)
    - Allow VSCode to modify itself:
      ```bash
      sudo chown -R $(whoami) $(which code)
      sudo chown -R $(whoami) /Applications/Visual Studio Code.app/Contents/Resources/app/out
      ```
  - Apply [`settings.json`](/manual-application/VSCode/settings.json)
  - Open Command Palette by pressing `cmd` + `shift` + `P` > enter `Enable Apc extension` > hit `return`
  - Quit and restart VSCode

## Git Manager

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

### Finder

- `cmd` + `3` to View as Columns
- `cmd` + `shift` + `.` to Show Hidden files

## Web Browser

### [Firefox](https://www.mozilla.org/en-US/firefox/new/)

- [Firefox Onebar](https://codeberg.org/Freeplay/Firefox-Onebar) theme with the following `about:config`:
  - `onebar.disable-autohide-of-URLbar-icons : false`
  - `onebar.disable-centering-of-URLbar      : false`
  - `onebar.disable-https-truncate           : false`
  - `onebar.disable-single-tab               : true`
  - `onebar.hide-all-URLbar-icons            : true`
  - `onebar.hide-navigation-buttons          : false`
- Color and layout tweaks to [Browser XUL](/manual-application/Firefox/userChrome.css) and [`:about` pages](/manual-application/Firefox/userContent.css) to match Gruvbox Dark (Hard) color (Firefox Onebar included)
  - **Only Dark theme is supported, no light theme or high-contrast theme support**
- System Preferences > Desktop and Dock > Default web browser: Firefox

### [Arc](https://arc.net/)

- [get-borderless-arc](https://github.com/ifvictr/get-borderless-arc)

## Other tools

- [`btop`](https://github.com/aristocratos/btop#installation)
- `cat` > [`bat`](https://github.com/sharkdp/bat#on-macos-or-linux-via-homebrew)
- `find` > [`fd`](https://github.com/sharkdp/fd#on-macos)
- [`fzf`](https://github.com/junegunn/fzf#using-homebrew)
  - `fzf` `fd` integration in part of [shell config](/.zshrc)
- `grep` > [ripgrep (`rg`)](https://github.com/BurntSushi/ripgrep#installation)
- `ls` > [`eza`](https://github.com/eza-community/eza#brew-macos)
- [`neofetch`](https://github.com/dylanaraps/neofetch/wiki/Installation#macos-homebrew)
- [pipes-sh (`pipes.sh`)](https://formulae.brew.sh/formula/pipes-sh)
- `ps` > [`procs`](https://github.com/dalance/procs#homebrew)
- [Taskwarrior (`task`)](https://taskwarrior.org/download/#distributions)
  - [Timewarrior (`timew`)](https://timewarrior.net/docs/install/#distributions)
  - [`taskwarrior-tui`](https://kdheepak.com/taskwarrior-tui/installation/)
- [`tty-clock`](https://formulae.brew.sh/formula/tty-clock)
- [`unimatrix`](https://github.com/will8211/unimatrix): `pip3 install git+https://github.com/will8211/unimatrix.git`
