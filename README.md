# hb's dotfiles

_Notes: this repo contains submodules, use `--recurse-submodules` when cloning this repo to get all the modules:_

```bash
git clone --recurse-submodules https://github.com/hbthen3rd/dotfiles.git
# or
git clone --recurse-submodules git@github.com:hbthen3rd/dotfiles.git
```

## Screenshots

![btop, neofetch, tty-clock, unimatrix, pipes.sh](/screenshots/__screenshot1.png 'btop, neofetch, tty-clock, unimatrix, pipes.sh')

![lazygit, neovim, bat](/screenshots/__screenshot2.png 'lazygit, neovim, bat')

![Zen Browser, ranger, eza, Alfred](/screenshots/__screenshot3.png 'Zen Browser, ranger, eza, Alfred')

## Machine + OS

- M2 MacBook Air / macOS Sequoia 15.1

## Desktop

### [yabai](https://github.com/koekeishiya/yabai)

- System Preferences > Desktop and Dock (**bold** is required):
  - Desktop & Stage Manager:
    - Show Items: uncheck "On Desktop"
    - Set "Click wallpaper to reveal desktop" to "Always"
  - Widgets:
    - Show Widgets: uncheck "On Desktop"
    - Set "Widget style" to "Full-color"
  - **Mission Control:**
    - **Uncheck "Automatically rearrange Spaces based on most recent use"**
- _Some advanced features of `yabai` [requires SIP to be disabled](https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection)._ _**However, disabling SIP will also disable Apple Pay on your Mac.**_ **For my setup, I left SIP enabled. My configs doesn't use any advanced feature from `yabai`**

### [JankyBorders](https://github.com/FelixKratz/JankyBorders)

### [sketchybar](https://github.com/FelixKratz/SketchyBar)

- Font: [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads)
- **Creates exactly 7 workspaces/desktops**
- System Preferences (**bold** is required):
  - **Control Center > Menu Bar Only:**
    - **Set "Automatically hide and show the menu bar" to "Always"**
  - **Desktop and Dock > Dock:**
    - **Check "Automatically hide and show the Dock"**

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

### [Warp](https://www.warp.dev/download)

### [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

- Plugin manager: [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
- Plugins:
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
  - [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

### [Homebrew](https://brew.sh/)

## File Manager

| | Ranger | Finder |
| :- | :-: | :-: |
| Code preview | ![ranger code preview](/screenshots/ranger_code.png 'ranger code preview') | ![Finder code preview](/screenshots/finder_code.png 'Finder code preview') |
| Image preview | ![ranger image preview](/screenshots/ranger_image.png 'ranger image preview') | ![Finder image preview](/screenshots/finder_image.png 'Finder image preview') |

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

## Code Editor


| | neovim | Zed |
| :- | :-: | :-: |
| Intellisense | ![neovim intellisense](/screenshots/neovim_intellisense.png 'neovim intellisense') | ![Zed intellisense](/screenshots/zed_intellisense.png 'Zed intellisense') |
| Terminal | ![neovim terminal](/screenshots/neovim_terminal.png 'neovim terminal') | ![Zed terminal](/screenshots/zed_terminal.png 'Zed terminal') |
| File search | ![neovim file search](/screenshots/neovim_filesearch.png 'neovim file search') | ![Zed file search](/screenshots/zed_filesearch.png 'Zed file search') |
| Source control | ![neovim source control](/screenshots/neovim_sourcecontrol.png 'neovim source control') | ![Zed source control](/screenshots/zed_sourcecontrol.png 'Zed source control') |
| Command palette | ![neovim command palette](/screenshots/neovim_commandpalette.png 'neovim command palette') | ![Zed command palette](/screenshots/zed_commandpalette.png 'Zed command palette') |

### [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#homebrew-on-macos-or-linux) + [Neovide](https://neovide.dev/installation.html#homebrew)

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

### [Zed](https://zed.dev/download)
  - Fonts:
    - Editor: [Cascadia Code](https://github.com/microsoft/cascadia-code/releases/latest)
    - Terminal: [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads)

### [Visual Studio Code](https://code.visualstudio.com/)
  - Fonts:
    - Editor: [Cascadia Code](https://github.com/microsoft/cascadia-code/releases/latest)
    - Terminal: [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads)
  - [Gruvbox Theme](https://marketplace.visualstudio.com/items?itemName=jdinhlife.gruvbox)
  - [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
  - [Fluent Icons](https://marketplace.visualstudio.com/items?itemName=miguelsolorio.fluent-icons)
  - Apply [`settings.json`](/manual-application/VSCode/settings.json)

## Source Control

### [Lazygit](https://github.com/jesseduffield/lazygit#homebrew)

## Web Browser

| | Zen Browser | Arc |
| :- | :-: | :-: |
| Web page | ![Zen Browser web page](/screenshots/zenbrowser_webpage.png 'Zen Browser web page') | ![Arc web page](/screenshots/arc_webpage.png 'Arc web page') |
| Split screen | ![Zen Browser split screen](/screenshots/zenbrowser_splitscreen.png 'Zen Browser split screen') | ![Arc split screen](/screenshots/arc_splitscreen.png 'Arc split screen') |
| New tab page | ![Zen Browser new tab page](/screenshots/zenbrowser_newtab.png 'Zen Browser new tab page') | ![Arc new tab page](/screenshots/arc_newtab.png 'Arc new tab page') |

### [Zen Browser](https://zen-browser.app/download)
  - [SuperPins](https://zen-browser.app/mods/ad97bb70-0066-4e42-9b5f-173a5e42c6fc)
    - Makes pinned tabs look similar to Essentials (icon only in a grid)
    - Adds a background to the pinned tabs
  - [Now playing indicator](https://zen-browser.app/mods/2e3369c7-e450-46ba-8794-75ccb0de5e48)
  - [sleek border](https://zen-browser.app/mods/bc25808c-a012-4c0d-ad9a-aa86be616019)
  - [Floating Status Bar](https://zen-browser.app/mods/906c6915-5677-48ff-9bfc-096a02a72379)
  - [Collapsed Tab X Button](https://zen-browser.app/mods/49dbaa98-06ee-42bd-9a8e-834babef7a41)

### [Arc](https://arc.net/)

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
