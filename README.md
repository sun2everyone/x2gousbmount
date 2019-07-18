# x2gousbmount_gphoto
Modification of x2go thinclient scripts to mount mmc cards and gphotofs (mtp cameras - canon etc.)
Do not forget to backup everything you replace or change!

0. install `gphotofs`
1. Modify `62-x2gogphotomount.rules` to add your camera using usb vendor id and model (look in lsusb)
3. put udev rules in `/lib/udev/rules.d/` (replace is necessary as in other case you will get double mounts of mass storages)
4. put `gphotofs@.service` in `/etc/systemd/system`
5. replace `/usr/lib/x2go/tce/x2gousbmount` with file from repo
6. reboot or restart udev by `udevadm control --reload-rules && udevadm trigger`
7. If you have problems with character set of filenames in mounted folders - replace `/usr/bin/x2gomountdirs` script on server side (by default x2go tries to change encoding when mountig sshfs, even if it is not necessary).

NOTE: encrypted cards forwarding won't work as systemctl start will always retrun 0.
