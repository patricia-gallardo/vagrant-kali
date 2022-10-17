#!/bin/bash

systemctl daemon-reload
mkdir -p /tmp/vbox;
mount -o loop /tmp/VBoxGuestAdditions.iso /tmp/vbox;
/tmp/vbox/VBoxLinuxAdditions.run || true

umount /tmp/vbox;
rm -rf /tmp/vbox;
rm -f /tmp/VBoxGuestAdditions.iso;
