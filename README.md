# hb's dotfiles

_There's still work to do (clean up, etc.)_

## Screenshots

![Screenshot 1](/screenshot1.png?raw=true 'Screenshot 1')
![Screenshot 2](/screenshot2.png?raw=true 'Screenshot 2')
![Screenshot 3](/screenshot3.png?raw=true 'Screenshot 3')

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
- Widget: [Conky](https://github.com/brndnmtthws/conky/wiki/Installation#conky-on-operating-systems)
- Launcher: [Rofi](https://github.com/davatorium/rofi/blob/next/INSTALL.md#install-distribution)
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
- Misc:
  - `python2`, `pip2`, `pynvim (pip2)`
  - `python3`, `pip3`, `pynvim (pip3)`
  - `ruby`, `ruby-dev`, `gem`, `neovim (gem)`
  - `node`, `npm`, `neovim (npm)`
  - Run `:checkhealth` in `nvim` before using the `init.vim` file

## Browsers

- [qutebrowser](https://qutebrowser.org/doc/install.html) (WebKit) - lightweight browser for dev testing (no extension/add-on) - not assigned to any workspace
- Firefox (Gecko) - CSS devtools + main browser for browsing - assigned to workspace 2
  - [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
- Chromium (Blink) - JavaScript devtools - assigned to workspace 2
  - [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
