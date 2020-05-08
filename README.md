# wifiman
Minimalistic wpa_supplicant configuration manager

## How-to use:

**wifiman/wifiman --help or wifigui (by root)**

## How-to build:

**make help**

## (Only for installing wifiman-indicator) Note for Debian users:

Before installation, make sure you executed __./debian_patch.sh__. Or, if you are maintaining this, make sure you installing with this variables: \
**PREFIX=yourdir/usr XDG_DEST=yourdir/etc/xdg/autostart PK_DEST=yourdir/usr/share/polkit-1 PK_EXEC_DEST="\\/usr\\/bin"**

# Dependencies:

wireless-tools \
wpa_supplicant \
sed \
binutils (makedepend for wifiman-indicator(optional)) \
DHCP client (dhcpcd or dhclient) \
systemd \
zenity (for wifigui) \
bash (of course)

# Thanks to:
Artyom H. \
(https://t.me/bruhLinkToMe): for help in writing code for id networks

# Exit codes:
1 - The script is run without root privileges or WLAN blocked. \
2 - lost argument. \
3 - Network interface doesn't exists. \
4 - Profile doesn't exists. \
5 - WifiMan doesn't running. \
6 - unknown argument. \
7 - systemctl error. \
8 - package dependency isn't installed.

## AUR git clone link:

https://aur.archlinux.org/wifiman.git
