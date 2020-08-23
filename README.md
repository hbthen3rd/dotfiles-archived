# hb's dotfiles

## Screenshots

![Screenshot 1](/screenshot1.png?raw=true 'Screenshot 1')
![Screenshot 2](/screenshot2.png?raw=true 'Screenshot 2')
![Screenshot 3](/screenshot3.png?raw=true 'Screenshot 3')
![Screenshot 4](/screenshot4.png?raw=true 'Screenshot 4')
![Screenshot 5](/screenshot5.png?raw=true 'Screenshot 5')
![Screenshot 6](/screenshot6.png?raw=true 'Screenshot 6')
![Screenshot 7](/screenshot7.png?raw=true 'Screenshot 7')
![Screenshot 8](/screenshot8.png?raw=true 'Screenshot 8')

## OS

- Manjaro Architect + i3 DE + minimal installation

## Fonts

- Interface: [Segoe UI](https://github.com/mrbvrz/segoe-ui-linux#how-to-install-it)
- Emoji: [Twemoji](https://github.com/eosrei/twemoji-color-font/releases) with [Bitstream Vera](https://www.gnome.org/fonts/) fallback
- Editor: [Cascadia Code](https://github.com/microsoft/cascadia-code/releases)
- Shell: [CaskaydiaCove Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode/complete)

## WM

### [i3-gaps](https://github.com/Airblader/i3/wiki/Installation)

- Compositor (for transparency effect): [picom](https://github.com/yshui/picom/)
- Status bar: [i3status-rust](https://github.com/greshake/i3status-rust)
- Launcher: [Rofi](https://github.com/davatorium/rofi/blob/next/INSTALL.md#install-distribution)
- Widget: [Conky](https://github.com/brndnmtthws/conky/wiki/Installation#conky-on-operating-systems)
- Background setter: [nitrogen](https://github.com/l3ib/nitrogen/)
- GTK:
  - Theme: [Flat Remix GTK](https://drasite.com/flat-remix-gtk)
  - Icon: [Flat Remix ICON](https://drasite.com/flat-remix)

## Term

### [Alacritty](https://github.com/alacritty/alacritty#installation)

## Shell

### [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

- Plugin manager: [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
- Plugins:
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
  - [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

## Editor

### [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-package)

- Plugin manager: [vim-plug](https://github.com/junegunn/vim-plug#neovim)
- Language server: [coc.nvim](https://github.com/neoclide/coc.nvim#quick-start)
  - Run [.local/bin/setup-coc](/.local/bin/setup-coc) to install all the coc extensions
- Misc:
  - `python2`, `pip2`, `pynvim (pip2)`
  - `python3`, `pip3`, `pynvim (pip3)`
  - `ruby`, `gem`, `neovim (gem)`
  - `node`, `npm`, `neovim (npm)`
  - `yarn` classic (v1.x) - for coc.nvim and prettier
  - Run `:checkhealth` in `nvim` before using the `init.vim` file

## Browsers

- [qutebrowser](https://qutebrowser.org/doc/install.html) (QTWebEngine (Blink fork)) - lightweight browser for quickly looking up something (no extension/add-on)
- Chromium (Blink) - JavaScript devtools + main browser for browsing
  - [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
- Firefox (Gecko) - CSS devtools
  - [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
- [GNOME Web (Epiphany)](https://wiki.gnome.org/Apps/Web) (Webkit) - browser for dev testing (no extension/add-on)

## Other tools

- [exa](https://the.exa.website/#installation)
- [The Silver Searcher (ag)](https://github.com/ggreer/the_silver_searcher#linux)
- [fzf](https://github.com/junegunn/fzf#using-linux-package-managers)
- [bat](https://github.com/sharkdp/bat#on-arch-linux)
- [ripgrep (rg)](https://github.com/BurntSushi/ripgrep#installation)
- [dust](https://github.com/bootandy/dust#install)
- [ytop](https://github.com/cjbassi/ytop#installation)
- [procs](https://github.com/dalance/procs#installation)
- [bandwhich](https://github.com/imsnif/bandwhich#arch-linux)
- [tealdeer (tldr)](https://github.com/dbrgn/tealdeer#from-package-manager)
