#!/bin/bash

cp -f /resolv.conf /etc/resolv.conf

echo "Starting openvpn and waiting, total time 20 seconds"

openvpn --config /profile.ovpn --auth-user-pass /passfile > /dev/null  &

sleep 20

echo "Getting public IP"
curl ipv4.icanhazip.com
echo "Testing complete"

killall openvpn
