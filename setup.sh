#!/bin/bash
# Setup installer projext SSH + OpenVPN +Websocket + l2tp/IPsec
# BytesPH AkoSiBytes
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi

echo "installing SSH "
wget https://raw.githubusercontent.com/andresslacson1989/autoscript-ssh-slowdns/main/ssh.sh && chmod +x ssh.sh && ./ssh.sh
cd
echo "installing Slow DNS "
wget https://raw.githubusercontent.com/andresslacson1989/autoscript-ssh-slowdns/main/slowdns.sh && chmod +x slowdns.sh && ./slowdns.sh
