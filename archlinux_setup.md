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
8. Select best mirrors: `pacman -Sy && pacman -S reflector && reflector --verbose --country France --latest 10 --sort rate --save /etc/pacman.d/mirrorlist`
9. Bootstrap the system: `pacstrap /mnt base base-devel linux linux-firmware vim man-db man-pages networkmanager dhclient dnsmasq zsh git`
10. Generate the `fstab` file: `genfstab -U /mnt >> /mnt/etc/fstab`, add `,lazytime` after `relatime` to avoid writing access time everytime a file is read (but wait for a write to happen to bundle it with it) while still keeping access times (some applications need it)
11. Chroot into the new system: `arch-chroot /mnt`
12. Set the timezone: `ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime` and `hwclock --systohc`
13. Generate locales: uncomment `en_US.UTF-8 UTF-8` from `/etc/locale.gen` and run `locale-gen`
14. Create the `locale.conf` with the following content: `LANG=en_US.UTF-8`
15. Save the keymap: `vim /etc/vconsole.conf` with this content `KEYMAP=fr`
16. Choose a hostname (most difficult part!) and save it in `/etc/hostname`
17. Set it in `/etc/hosts` as well:
```
127.0.0.1 localhost
::1   localhost
127.0.1.1 myhostname.localdomain  myhostname
```
18. Set the root password (make sure you have the correct keyboard layout!): `passwd`
19. Install `systemd-boot`: make sure the ESP is mounted on `/boot` and run `bootctl --path=/boot install`
20. Create a post-install hook to automatically update systemd-boot in the ESP when the package is upgraded: `/etc/pacman.d/hooks/100-systemd-boot.hook`
```ini
[Trigger]
Type = Package
Operation = Upgrade
Target = systemd

[Action]
Description = Updating systemd-boot...
When = PostTransaction
Exec = /usr/bin/bootctl update
```
21. Install CPU microcode: `pacman -Sy && pacman -S amd-ucode`
22. Create a new boot entry which combines Linux and the microcode: `/boot/loader/entries/arch.conf`
```
title   Arch Linux
linux   /vmlinuz-linux
initrd  /amd-ucode.img
initrd  /initramfs-linux.img
options root=UUID=<UUID of the / partition> rw
```
23. Configure systemd-boot: `/boot/loader/loader.conf`
```
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

1. Install `yay`:
```sh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sic
```
2. Configure pacman for colored output: uncomment the `#Color` line in `/etc/pacman.conf`
3. Configure `makepkg` for:
   1. better make performance: change `MAKEFLAGS="-j2"` to `MAKEFLAGS="-j$(nproc)"`
   2. better compress performance: install `pigz` and `pbzip2` then edit the end of the file with the following
```shell
COMPRESSGZ=(pigz -c -f -n)
COMPRESSBZ2=(pbzip2 -c -f)
COMPRESSXZ=(xz -c -z - --threads=0)
```
