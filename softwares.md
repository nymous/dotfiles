# Softwares

<!-- toc -->

- [List of softwares](#list-of-softwares)
- [How to generate](#how-to-generate)

<!-- tocstop -->

## List of softwares

- [`alacritty`](https://github.com/alacritty/alacritty): a very fast terminal; see [kitty](https://sw.kovidgoyal.net/kitty/) for an alternative with more features (splits, ligatures, image display in terminal, plugins...)
- [`antibody`](https://github.com/getantibody/antibody): ZSH plugin manager
- [`barrier`](https://github.com/debauchee/barrier): a cross-platform KVM software, to share a single mouse and keyboard between multiple computers running on macOS, Windows, Linux and BSD!
- [`bat`](https://github.com/sharkdp/bat): cat but with color
- `blueman`: a GUI to manage Bluetooth devices
- `bluez{,-utils}`: required to have a working Bluetooth; don't forget to add `pulseaudio-bluetooth`!
- [bottom](https://github.com/ClementTsang/bottom): TUI system monitoring
- [`chatty`](https://chatty.github.io/): a Twitch chat client
- [`chezmoi`](https://www.chezmoi.io/): dotfiles manager
- [`clipmenu`](https://github.com/cdown/clipmenu): clipboard manager
- [`code`](https://code.visualstudio.com/): an open-source distribution of Visual Studio Code; see [the dedicated VSCode page](vscode.md) for my extensions, and to know the difference between this and a "true" Visual Studio Code
- [`devd`](https://github.com/cortesi/devd): a local webserver for developers, with live-reload. Sister project to `modd`, see below.
- [`discord-canary`](https://discord.com/): the chat app Discord Canary (canary = alpha version)
- [`docker`](https://www.docker.com/): the de-facto container engine
- [`docker-compose`](https://docs.docker.com/compose/): use declarative configuration files to run containers instead of remembering all `docker run` flags ^^
- [`dunst`](https://github.com/dunst-project/dunst): to show notifications
- `efibootmgr`: to choose which OS to boot next (`sudo efibootmgr -n 0000` to set (n)ext boot to the first entry)
- [`fasd`](https://github.com/clvv/fasd): to jump to frequently used folders with `z` (use with the `fasd` ZSH plugin); look at [`zoxide`](https://github.com/ajeetdsouza/zoxide) for a more modern (and maintained) alternative?
- [`feh`](https://feh.finalrewind.org/): image viewer and used to set the background with Variety
- `file-roller`: to view, create and extract archives (with `thunar-archive-plugin` to create from Thunar)
- [`firefox-nightly`](https://www.mozilla.org/en-US/firefox/): Firefox Nightly (gotta live on the edge!)
- `git`: version control
- [`git-delta`](https://github.com/dandavison/delta): a diff viewer for git (and more) with syntax highlighting
- [`glances`](https://github.com/nicolargo/glances): htop on steroids
- `gnome-calculator`: simple calculator
- `gnome-keyring`: a freedesktop.org Secret Service (equivalent to macOS "Keychain" or Windows Credential Locker), which can be required by some applications (e.g. the Jetbrains Toolbox or VSCode to store their credentials); you can use `seahorse` for a GUI
- `gvfs-smb`: to mount Samba shares (like a NAS)
- [`i3-gaps`](https://github.com/Airblader/i3): tiling window manager patched to add gaps between windows
- [`i3lock-color`](https://github.com/Raymo111/i3lock-color): lockscreen
- [`insomnia-bin`](https://insomnia.rest/): an API graphical client for REST and GraphQL, I find it easier to use than Postman
- [`inxi`](https://smxi.org/docs/inxi.htm): a CLI system information tool, useful when asking for help on forums, just paste the full output
- [`jetbrains-toolbox`](https://www.jetbrains.com/toolbox-app/): to download all Jetbrains IDEs and keep them updated
- [`libre-office-fresh`](https://www.libreoffice.org/): an office software suite
- [`lsd`](https://github.com/Peltoche/lsd): ls but with colors and icons
- `lxsession`: a lightweight Polkit agent, don't forget to autostart it with your graphical session
- [`mkcert`](https://github.com/FiloSottile/mkcert): very useful to test your web services locally with a trusted TLS certificate (if it asks for 'Enter Password or Pin for "NSS Certificate DB"', it's asking for your Firefox master password)
- [`modd`](https://github.com/cortesi/modd): Watch files and respond to changes
- [`mpv`](https://mpv.io/): lightweight media player
- [`neofetch`](https://github.com/dylanaraps/neofetch): to brag about your system in screenshots on /r/unixporn
- [`nerdsfont-complete`](https://www.nerdfonts.com/): huuuuge package that adds many fonts with symbols and emojis and stuff
- `noto-fonts-emoji`: emoji is ❤️
- `numlockx`: to automatically activate NumLock when booting
- [`nvm`](https://github.com/nvm-sh/nvm): to install multiple Node versions
- [`obs-studio`](https://obsproject.com/): if you want to stream or record videos
- [OpenRGB](https://openrgb.org/): to control every RGB peripheral in your system (red makes your computer go faster, it's just science); don't forget to load the `i2c-*` kernel modules and the `udev` rules
- [`pass`](https://www.passwordstore.org/): Passwordstore, a password manager that uses git and gpg
- `pavucontrol`: control audio I/O using PulseAudio
- [`peek`](https://github.com/phw/peek): a simple screen recorder that produces tiny video files (in MP4, GIF or WebM format)
- [`picom`](https://github.com/yshui/picom): a compositor for X11, to have transparency
- [`python-poetry`](https://python-poetry.org/): an alternative and more modern Python dependency manager
- [`polybar`](https://polybar.github.io/): a modular status bar
- `pulseeffects`: lets you apply many filters on your sound input and output
- [`pyenv`](https://github.com/pyenv/pyenv): to install multiple Python versions
- [`rbenv`](https://github.com/rbenv/rbenv): to install multiple Ruby versions
- [`redshift`](http://jonls.dk/redshift/): change the screen temperature to avoid burning your eyes at night
- `reflector`: test Archlinux packages mirrors and find the fastest ones
- [`rofi`](https://github.com/davatorium/rofi): a general purpose app launcher and dmenu replacer
- [`rofimoji`](https://github.com/fdw/rofimoji/): to select your emoji using Rofi
- [`rofi-pass`](https://github.com/carnager/rofi-pass): a pass frontend that uses Rofi
- [`ruby-build`](https://github.com/rbenv/ruby-build): required for rbenv to install new Ruby versions
- [`rustup`](https://rustup.rs/): to install the Rust compiler (and multiple versions if required)
- [`s-tui`](https://github.com/amanusk/s-tui): a TUI to show CPU temperature and usage, with included stresstest
- [`safeeyes`](https://github.com/slgobinath/SafeEyes): reminds you to look away and do eyes exercices regularly (when you stay in front of your screen for 13 hours a day...)
- [`shellcheck-bin`](https://www.shellcheck.net/): a linter for Shell scripts; use the `-bin` version to avoid reinstalling everytime a Haskell dependency is updated
- [`sccache`](https://github.com/mozilla/sccache): used to accelerate Rust compilation, don't forget to configure Cargo to use it afterwards (see [Rust Arch wiki](https://wiki.archlinux.org/index.php/Rust#sccache))
- [`starship`](https://starship.rs/): a fast and customizable prompt, written in Rust
- [`streamlink{,-twitch-gui}`](https://streamlink.github.io/): a CLI tool to play Twitch streams in a native player (mpv or VLC), and [its accompanying GUI](https://streamlink.github.io/streamlink-twitch-gui/)
- [`sublime-text`](https://www.sublimetext.com/): a fast text editor; you need to add their Archlinux repository first
- [`tectonic`](https://tectonic-typesetting.github.io/): a no-fuss, very fast TeX/LaTeX compiler written in Rust
- `thunar`: graphical file manager
- [`tldr`](https://tldr.sh/): simple and to-the-point examples for many commands
- `trickle`: utility to limit bandwidth (download and upload) used by a process
- [`ttf-fira-code`](https://github.com/tonsky/FiraCode): a font with ligatures 😍
- `tumbler`: to see thumbails in Thunar (and `ffmpegthumbnailer` for videos)
- [`variety`](https://peterlevi.com/variety/): automatically set and change your wallpapers from many sources (local, Reddit, RSS...)
- [`vimpager`](https://github.com/rkitover/vimpager): gives you `vimcat`, a cat that uses vim syntax highlighting
- [`virtualbox`](https://www.virtualbox.org/): a simple to use hypervisor (install `virtualbox-host-modules-arch` if you use the standard kernel, and `virtualbox-guest-iso` to improve performance in guests)
- [`vlc`](https://www.videolan.org/vlc/): the play-it-all media player
- `xclip`: stop doing `cat .ssh/id_rsa` and copy-pasting manually, start `xclip -selection clipboard < ~/.ssh/id_ed25519`! (it sends stuff to your clipboard from the CLI)
- `xdg-user-dirs{,-gtk}`: create well-known directories such as Desktop, Documents and Music
- [`yarn`](https://yarnpkg.com/): a Node package manager
- [`yay`](https://github.com/Jguer/yay): an AUR helper
- [`youtube-dl`](https://ytdl-org.github.io/youtube-dl/): to download videos from Youtube and so many more!
- ~~[`ytop`](https://github.com/cjbassi/ytop): TUI system monitoring~~ Deprecated, see `bottom` now
- [`zathura{,-pdf-poppler}`](https://pwmt.org/projects/zathura/): a PDF viewer (doesn't support PDF forms though, but Firefox does!)
- [`zeal`](https://zealdocs.org/): keep your dev docs available offline on your computer
- `zsh`: a good shell

## How to generate

`pacman -Qe`
