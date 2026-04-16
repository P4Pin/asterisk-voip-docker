#!/bin/sh
set -e

mkdir -p /var/spool/asterisk
mkdir -p /var/log/asterisk
mkdir -p /var/run/asterisk

exec /usr/sbin/asterisk -f -v -v -v