# Scritpt to build asahi linux (archlinux arm) Image

To support btrfs, you need
1. add mkfs.btrfs to build.sh
2. add btrfs-progs, kernel headers to package
3. grub and initramfs btrfs support
4. fstab setting

Note that, not add kernel support btrfs.

---
The install script will just `dd` the iamge to disk parts, beacuase of
the lack of support of booting from usb device.

Just like Ghost Recover in Windows, this kind of installer is very hard to custermize,
you need to build a whole brand new image for even a little change.

---

After you build the image, them download install script from asahilinux.org.

Modified the data_json to local file, them modified the json file, add image (http) path
to it.

Suggest to hold a httpd server on your laptop, and then the script can download from your
local laptop.

The install is written by python(it is easy to modified), but install script will download it from internet.
So, hold a httpd server by yourself is the best choice.

---

Asahi linux NOT support the following things at 2024.3.1
1. usb-C
2. speaker
3. widevine (spodify, netflix and amazon prime video)


Good for reading

https://asahilinux.org/2024/01/fedora-asahi-new/

https://asahilinux.org/2023/08/fedora-asahi-remix/

https://www.da.vidbuchanan.co.uk/blog/netflix-on-asahi.html
