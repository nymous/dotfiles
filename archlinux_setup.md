# Archlinux setup

<!-- toc -->

- [Installation](#installation)
- [Post-installation](#post-installation)

<!-- tocstop -->

## Installation

From <https://wiki.archlinux.org/index.php/Installation_guide>

1. Boot from USB stick
2. Change keyboard layout: `loadkeys fr`
3. Check Internet connection: `ping archlinux.org`
4. Update system clock: `timedatectl set-ntp true`
5. Partition the disk: only 2 partitions, one for `/` and a swap partition (with `fdisk`)
6. Format the partitions: `mkfs.ext4 /dev/<whatever>` and `mkswap /dev/<swap>` + `swapon /dev/<swap>`
7. Mount the filesystems: `mount /dev/<whatever> /mnt`, `mkdir /mnt/boot`, `mount /dev/<ESP> /mnt/boot`
8. Select best mirrors: `pacman -Sy reflector && reflector --verbose --country France --latest 10 --sort rate --save /etc/pacman.d/mirrorlist`
9. Bootstrap the system: `pacstrap /mnt base base-devel linux linux-firmware vim man-db man-pages networkmanager dhclient dnsmasq zsh git`
10. Generate the `fstab` file: `genfstab -U /mnt >> /mnt/etc/fstab`, add `,lazytime` after `relatime` to avoid writing access time everytime a file is read (but wait for a write to happen to bundle it with it) while still keeping access times (some applications need it)
11. Chroot into the new system: `arch-chroot /mnt`
12. Set the timezone: `ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime` and `hwclock --systohc`
13. Generate locales: uncomment `en_US.UTF-8 UTF-8` and `en_DK.UTF-8 UTF-8` from `/etc/locale.gen` and run `locale-gen` (en_DK is used to have 24 hours clock and the YYYY-MM-DD date format)
14. Create the `locale.conf` with the following content:
```ini
LANG=en_US.UTF-8
LC_TIME=en_DK.UTF-8
```
15. Save the keymap: `vim /etc/vconsole.conf` with this content `KEYMAP=fr`
16. Choose a hostname (most difficult part!) and save it in `/etc/hostname`
17. Set it in `/etc/hosts` as well:
```
127.0.0.1 localhost
::1   localhost
127.0.0.1 myhostname.localdomain  myhostname
```
18. Set the root password (make sure you have the correct keyboard layout!): `passwd`
19. Install `systemd-boot`: make sure the ESP is mounted on `/boot` and run `bootctl --path=/boot install`
20. Enable `systemd-boot-update.service`, and create a post-install hook to automatically update systemd-boot in the ESP when the package is upgraded: `/etc/pacman.d/hooks/100-systemd-boot.hook`
```ini
[Trigger]
Type = Package
Operation = Upgrade
Target = systemd

[Action]
Description = Gracefully upgrading systemd-boot...
When = PostTransaction
Exec = /usr/bin/systemctl restart systemd-boot-update.service
```
1.  Install CPU microcode: `pacman -Sy amd-ucode`
2.  Create a new boot entry which combines Linux and the microcode (to insert the UUID in the vim file, run `:r!blkid -o value /dev/<whatever> | head -n1`): `/boot/loader/entries/arch.conf`
```
title   Arch Linux
linux   /vmlinuz-linux
initrd  /amd-ucode.img
initrd  /initramfs-linux.img
options root=UUID=<UUID of the / partition> rw
```
23. Configure systemd-boot: `/boot/loader/loader.conf`
```
timeout 3
default arch
```
24. Setup the network for DHCP: `/etc/NetworkManager/conf.d/dhcp-client.conf`
```ini
[main]
dhcp=dhclient
```
25. Setup the DNS with `dnsmasq`: `/etc/NetworkManager/conf.d/dns.conf`
```ini
[main]
dns=dnsmasq
```
26. Start and enable NetworkManager: `systemctl start NetworkManager && systemctl enable NetworkManager`
27. Create a user: `useradd -m -G wheel -s /usr/bin/zsh nymous && passwd nymous`
28. Allow `wheel` group to use sudo: `EDITOR=vim visudo` and uncomment the line `%wheel ALL=(ALL) ALL`
29. Reboot, you should be in your new Arch installation now!

## Post-installation

1. Configure pacman for colored output: uncomment the `#Color` line in `/etc/pacman.conf` (optional: add the `ILoveCandy` option for a pacman progress bar ^^)
2. Configure `/etc/makepkg.conf` for:
   1. better make performance: change `MAKEFLAGS="-j2"` to `MAKEFLAGS="-j$(nproc)"`
   2. better compress performance: install `pigz` and `pbzip2` then edit the end of the file with the following
```shell
COMPRESSGZ=(pigz -c -f -n)
COMPRESSBZ2=(pbzip2 -c -f)
COMPRESSXZ=(xz -c -z - --threads=0)
```
3. Install `yay`:
```sh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sic
```
4. Enable `multilib` repo by uncommenting its lines in `/etc/pacman.conf` then run `sudo pacman -Syu`
5. Install `xorg mesa amdvlk vulkan-radeon xf86-video-amdgpu lib32-mesa lib32-vulkan-radeon`
6. Load drivers early in the boot process: edit `/etc/mkinitcpio.conf` to add `MODULES=(amdgpu)` then regenerate the initramfs: `sudo mkinitcpio -p linux`
7. Enable FreeSync: create `/etc/X11/xorg.conf.d/10-freesync.conf` with the following content:
```
Section "Device"
        Identifier "Card0"
        # https://wiki.archlinux.org/title/Variable_refresh_rate
        Option "VariableRefresh" "true"
        # https://wiki.archlinux.org/title/AMDGPU#Tear_free_rendering
        Option "TearFree" "true"
EndSection
```
7. Configure graphical session env variables: create `/etc/X11/Xsession.d/90-environment`
```
export XDG_CURRENT_DESKTOP="i3"
export XDG_SESSION_DESKTOP="i3"
```
7. Set Xorg keymap: `sudo localectl set-x11-keymap fr pc105 oss_latin9 ctrl:swapcaps,compose:rctrl-altgr` (the `oss_latin9` variant gives you easy access to "œ", "æ" or "…" characters, the `compose:rctrl-altgr` option enables the [compose key](https://wiki.archlinux.org/title/Xorg/Keyboard_configuration#Configuring_compose_key) for any other character you would need (keep <kbd>AltGr</kbd> pressed then press <kbd>Right Ctrl</kbd>), and the `ctrl:swapcaps` swaps the position of <kbd>Ctrl</kbd> (often used for shortcuts but stuck in the corner) with <kbd>Caps lock</kbd> (where the pinky naturally sits))
8. Install `numlockx`
9. Install `i3` and choose `i3-gaps` over `i3-wm`
10. Install a terminal, eg. `alacritty` (with `alacritty-terminfo`)
11. Install `xorg-xinit`, copy the configuration file from `/etc/X11/xinit/xinitrc` to `~/.xinitrc`, then edit the last lines with the following:
```shell
numlockx &
exec i3
```
11. Since version 1.44 Pango doesn't support bitmap fonts anymore, so you need to install an OTF/TTF font such as Fira Code: `otf-fira-code` (you can remove `xorg-fonts-{75,100}dpi`)
12. You can now finally start the X server! `startx` \o/
13. For hardware decoding and encoding you can install `libva-mesa-driver` and `mesa-vdpau`, and check that everything works with `vainfo` and `vdpauinfo` (available in the packages `libva-utils` and `vdpauinfo`)
14. Now that you have a graphical interface you should install a browser, so that you can copy-paste commands instead of retyping them from another computer ^^' `yay -Sy firefox-nightly`
15. Install the launcher (you need to run Firefox at some point): `yay -Sy rofi` and add a keybind in the i3 config: `bindsym $mod+d exec rofi -show drun -matching fuzzy -show-icons`
16. Create your SSH key: `ssh-keygen -o -a 100 -t ed25519 -C "<user>@<hostname>"` (from <https://medium.com/risan/upgrade-your-ssh-key-to-ed25519-c6e8d60d3c54>)
17. Clone this repository: `git clone git@github.com:nymous/dotfiles.git`
18. Install [twpayne/chezmoi](https://github.com/twpayne/chezmoi): `yay -Sy chezmoi`
19. Run `chezmoi diff` to see what will be updated, then `chezmoi apply -v` to apply all dotfiles
20. For `pass` you need to copy your key in the `gitolite-admin` repo, give it the correct rights then clone the pass repo. You then need to import the GPG key using `gpg --import key.asc`.
