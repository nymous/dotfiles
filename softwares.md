# Softwares

<!-- toc -->

- [List of softwares](#list-of-softwares)
- [How to generate](#how-to-generate)

<!-- tocstop -->

## List of softwares

- `alacritty`: terminal
- `antibody`: ZSH plugin manager
- `bat`: cat but with color
- `blueman`: a GUI to manage Bluetooth devices
- `bluez{,-utils}`: required to have a working Bluetooth; don't forget to add `pulseaudio-bluetooth`!
- `chatty`: a Twitch chat client
- `chezmoi`: dotfiles manager
- `clipmenu`: clipboard manager
- `code`: Visual Studio Code
- `devd`: a local webserver for developers, with live-reload. Sister project to `modd`, see below.
- `discord-canary`: Discord Canary (doh)
- `docker`: the de-facto container engine
- `docker-compose`: use declarative configuration files to run containers instead of remembering all `docker run` flags ^^
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
- `insomnia-bin`: an API graphical client for REST and GraphQL, I find it easier to use than Postman
- `inxi`: a CLI system information tool, useful when asking for help on forums, just paste the full output
- `jetbrains-toolbox`: to download all Jetbrains IDEs and keep them updated
- `libre-office-fresh`: an office software suite
- `lsd`: ls but with colors and icons
- `mkcert`: very useful to test your web services locally with a trusted TLS certificate (if it asks for 'Enter Password or Pin for "NSS Certificate DB"', it's asking for your Firefox master password)
- `modd`: Watch files and respond to changes
- `mpv`: lightweight media player
- `neofetch`: to brag about your system in screenshots on /r/unixporn
- `nerdsfont-complete`: huuuuge package that adds many fonts with symbols and emojis and stuff
- `noto-fonts-emoji`: emoji is ❤️
- `numlockx`: to automatically activate NumLock when booting
- `nvm`: to install multiple Node versions
- `obs-studio`: if you want to stream or record videos
- [OpenRGB](https://gitlab.com/CalcProgrammer1/OpenRGB): to control every RGB peripheral in your system (red makes your computer go faster, it's just science); don't forget to load the `i2c-*` kernel modules and the `udev` rules
- `pass`: Passwordstore, a password manager that uses git and gpg
- `pavucontrol`: control audio I/O using PulseAudio
- `picom`: a compositor for X11, to have transparency
- `python-poetry`: an alternative and more modern Python dependency manager
- `polybar`: a modular status bar
- `pulseeffects`: lets you apply many filters on your sound input and output
- `pyenv`: to install multiple Python versions
- `rbenv`: to install multiple Ruby versions
- `redshift`: change the screen temperature to avoid burning your eyes at night
- `reflector`: test Archlinux packages mirrors and find the fastest ones
- `rofi`: a general purpose app launcher and dmenu replacer
- `rofimoji`: to select your emoji using Rofi
- `rofi-pass`: a pass frontend that uses Rofi
- `ruby-build`: required for rbenv to install new Ruby versions
- `rustup`: to install the Rust compiler (and multiple versions if required)
- `s-tui`: a TUI to show CPU temperature and usage, with included stresstest
- `safeeyes`: reminds you to look away and do eyes exercices regularly (when you stay in front of your screen for 13 hours a day...)
- `shellcheck-bin`: a linter for Shell scripts; use the `-bin` version to avoid reinstalling everytime a Haskell dependency is updated
- `sccache`: used to accelerate Rust compilation, don't forget to configure Cargo to use it afterwards (see [Rust Arch wiki](https://wiki.archlinux.org/index.php/Rust#sccache))
- `starship-bin`: a fast and customizable prompt, written in Rust
- `streamlink{,-twitch-gui}`: a CLI tool to play Twitch streams in a native player (mpv or VLC), and its accompanying GUI
- `sublime-text`: a fast text editor; you need to add their Archlinux repository first
- `tectonic`: a no-fuss, very fast TeX/LaTeX compiler written in Rust
- `thunar`: graphical file manager
- `tldr`: simple and to-the-point examples for many commands
- `trickle`: utility to limit bandwidth (download and upload) used by a process
- `ttf-fira-code`: a font with ligatures 😍
- `variety`: automatically set and change your wallpapers from many sources (local, Reddit, RSS...)
- `vimpager`: gives you `vimcat`, a cat that uses vim syntax highlighting
- `virtualbox`: a simple to use hypervisor (install `virtualbox-host-modules-arch` if you use the standard kernel, and `virtualbox-guest-iso` to improve performance in guests)
- `vlc`: the play-it-all media player
- `xclip`: stop doing `cat .ssh/id_rsa` and copy-pasting manually, start `xclip -selection clipboard < ~/.ssh/id_ed25519`! (it sends stuff to your clipboard from the CLI)
- `xdg-user-dirs{,-gtk}`: create well-known directories such as Desktop, Documents and Music
- `yarn`: a Node package manager
- `yay`: an AUR helper
- `youtube-dl`: to download videos from Youtube and so many more!
- `ytop`: TUI system monitoring
- `zathura{,-pdf-poppler}`: a PDF viewer
- `zsh`: a good shell

## How to generate

`pacman -Qe`
