#!/bin/bash
if ! [ "$(command -v iwconfig)" ]; then echo "wireless-tools not found" >> .tmp; berror=1; fi
if ! [ "$(command -v wpa_supplicant)" ]; then echo "wpa_supplicant not found" >> .tmp; berror=1; fi
if ! [ "$(command -v sed)" ]; then echo "sed not found" >> .tmp; berror=1; fi
if [ -z "$(command -v dhcpcd; command -v dhclient)" ]; then echo "DHCP client not found" >> .tmp; berror=1; fi
if ! [ -d /etc/systemd ]; then echo "systemd not found" >> .tmp; berror=1; fi
if ! [ "$(command -v zenity)" ]; then echo "zenity not found (wifigui)" >> .tmp; berror=1; fi
if ! [ "$(command -v wc)" ]; then echo "coreutils not found" >> .tmp; berror=1; fi
if [ "$berror" ]; then cat .tmp; rm .tmp; exit 1; else
echo "All cool"; fi
