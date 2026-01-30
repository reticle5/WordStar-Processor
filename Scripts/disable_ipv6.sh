#!/bin/sh

cat << EOT > haha
# Disabling IPv6
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
EOT

sudo mv haha /etc/sysctl.conf
sudo sysctl -p

cat /proc/sys/net/ipv6/conf/all/disable_ipv6
