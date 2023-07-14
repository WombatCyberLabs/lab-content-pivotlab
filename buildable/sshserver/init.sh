#!/bin/sh

#prepare run dir
if [ ! -d "/var/run/sshd" ]; then
  mkdir -p /var/run/sshd
fi
/usr/sbin/sshd -D 