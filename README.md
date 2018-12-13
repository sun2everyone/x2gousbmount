# x2gousbmount_gphoto
Modification of x2go thinclient scripts to mount mmc cards and gphotofs (mtp cameras - canon etc.)

0. install gphotofs
1. Modify 62-x2gogphotomount.rules to add your camera using usb vendor id and model (look in lsusb)
3. put udev rules in /lib/udev/rules.d/
4. put gphotofs@.service in /etc/systemd/system
5. replace /usr/lib/x2go/tce/x2gousbmount with file from repo

NOTE: encrypted cards forwarding won't work as systemctl start will always retrun 0.
