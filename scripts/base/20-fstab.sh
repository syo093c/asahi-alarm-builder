#!/bin/sh

cat >/etc/fstab <<EOF
UUID=$ROOT_UUID / btrfs rw,relatime,ssd,discard=async,space_cache=v2,subvol=/,compress=zstd 0 1
UUID=$EFI_UUID /boot/efi vfat rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro    0 2
EOF
