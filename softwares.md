# Softwares

<!-- toc -->

- [List of softwares](#list-of-softwares)
- [How to generate](#how-to-generate)

<!-- tocstop -->

## List of softwares

- `alacritty`: terminal
- `antibody`: ZSH plugin manager
- `bat`: cat but with color
- `chezmoi`: dotfiles manager
- `clipmenu`: clipboard manager
- `code`: Visual Studio Code
- `discord-canary`: Discord Canary (doh)
- `dunst`: to show notifications
- `efibootmgr`: to choose which OS to boot next (`sudo efibootmgr -n 0000` to set (n)ext boot to the first entry)
- `fasd`: to jump to frequently used folders with `z` (use with the `fasd` ZSH plugin)
- `feh`: image viewer and used to set the background with Variety
- `firefox-nightly`: Firefox Nightly (gotta live on the edge!)
- `git`: version control
- `glances`: htop on steroids
- `gnome-calculator`: simple calculator
- `gvfs-smb`: to mount Samba shares (like a NAS)
- `i3-gaps`: tiling window manager patched to add gaps between windows
- `i3lock-color`: lockscreen
- `jetbrains-toolbox`: to download all Jetbrains IDEs and keep them updated
- `lsd`: ls but with colors and icons
- `mpv`: lightweight media player
- `neofetch`: to brag about your system in screenshots on /r/unixporn
- `nerdsfont-complete`: huuuuge package that adds many fonts with symbols and emojis and stuff
- `noto-fonts-emoji`: emoji is ❤️
- `numlockx`: to automatically activate NumLock when booting
- `nvm`: to install multiple Node versions
- `pass`: Passwordstore, a password manager that uses git and gpg
- `pavucontrol`: control audio I/O using PulseAudio
- `picom`: a compositor for X11, to have transparency
- `python-poetry`: an alternative and more modern Python dependency manager
- `polybar`: a modular status bar
- `pyenv`: to install multiple Python versions
- `rbenv`: to install multiple Ruby versions
- `redshift`: change the screen temperature to avoid burning your eyes at night
- `reflector`: test Archlinux packages mirrors and find the fastest ones
- `rofi`: a general purpose app launcher and dmenu replacer
- `rofi-pass`: a pass frontend that uses Rofi
- `ruby-build`: required for rbenv to install new Ruby versions
- `rustup`: to install the Rust compiler (and multiple versions if required)
- `s-tui`: a TUI to show CPU temperature and usage, with included stresstest
- `safeeyes`: reminds you to look away and do eyes exercices regularly (when you stay in front of your screen for 13 hours a day...)
- `shellcheck-bin`: a linter for Shell scripts; use the `-bin` version to avoid reinstalling everytime a Haskell dependency is updated
- `starship-bin`: a fast and customizable prompt, written in Rust
- `sublime-text`: a fast text editor; you need to add their Archlinux repository first
- `thunar`: graphical file manager
- `ttf-fira-code`: a font with ligatures 😍
- `variety`: automatically set and change your wallpapers from many sources (local, Reddit, RSS...)
- `xclip`: stop doing `cat .ssh/id_rsa` and copy-pasting manually, start `xclip -selection clipboard < ~/.ssh/id_ed25519`! (it sends stuff to your clipboard from the CLI)
- `xdg-user-dirs{,-gtk}`: create well-known directories such as Desktop, Documents and Music
- `yarn`: a Node package manager
- `yay`: an AUR helper
- `ytop`: TUI system monitoring
- `zathura{,-pdf-poppler}`: a PDF viewer
- `zsh`: a good shell

## How to generate

`pacman -Qe`
