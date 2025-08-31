#!/bin/sh

# Download Config
wget -O /etc/config/modeminfo \
https://raw.githubusercontent.com/Razifadm/luci-app-modeminfo/5GSA/files/etc/config/modeminfo

# Download bin modeminfo 
wget -O /usr/bin/modeminfo \
https://raw.githubusercontent.com/Razifadm/luci-app-modeminfo/5GSA/files/usr/bin/modeminfo

# Download Lua Controller
wget -O /usr/lib/lua/luci/controller/modeminfo.lua \
https://raw.githubusercontent.com/Razifadm/luci-app-modeminfo/5GSA/files/usr/lib/lua/luci/controller/modeminfo.lua

# Download modeminfo.htm
wget -O /usr/lib/lua/luci/view/modeminfo.htm \
https://raw.githubusercontent.com/Razifadm/luci-app-modeminfo/5GSA/files/usr/lib/lua/luci/view/modeminfo.htm

# Bagi permission execute pada bin
chmod +x /usr/bin/modeminfo


echo "✅ modeminfo updated"
# Padam skrip ini sendiri
rm -f "$0"
