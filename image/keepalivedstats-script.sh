#!/bin/sh
# This script creates/updates /tmp/keepalived.stats for yawollet every 20 seconds

while true
do
  # Send USR2 signal to keepalived for the creation/update of /tmp/keepalived.stats
  kill -USR2 $(cat /var/run/keepalived.pid)
  # Change file permissions for /tmp/keepalived.stats to 644 so yawollet can read it
  chmod 644 /tmp/keepalived.stats
  sleep 20s
done
