#!/bin/bash
DEVICE=$1
/usr/bin/gphotofs $DEVICE -o allow_other
if [ -d $DEVICE ];
then
echo "Successfully mounted gphotofs at $DEVICE" >> /var/log/syslog
exit 0
else
echo "Failed to mount gphotofs $DEVICE" >> /var/log/syslog
exit 1
fi
