#!/bin/sh

sed -i -e 's/^HOOKS=(base udev/HOOKS=(base asahi udev/' \
	/etc/mkinitcpio.conf

# add btrfs support for initramfs
sed -i -e 's/^MODULES=(/MODULES=(btrfs/' \
	/etc/mkinitcpio.conf

mkdir -p /boot/efi/m1n1
pacman --noconfirm -S linux-asahi asahi-meta
