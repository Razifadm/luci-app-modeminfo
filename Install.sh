#!/bin/sh

# Download Config
wget -O /etc/config/modeminfo \
https://raw.githubusercontent.com/Razifadm/luci-app-modeminfo/5GSA/files/etc/config/modeminfo

# Download bin modeminfo 
rm -f /usr/bin/modeminfo
wget -O /usr/bin/modeminfo \
https://raw.githubusercontent.com/Razifadm/luci-app-modeminfo/5GSA/files/usr/bin/modeminfo

# Download Lua Controller
wget -O /usr/lib/lua/luci/controller/modeminfo.lua \
https://raw.githubusercontent.com/Razifadm/luci-app-modeminfo/5GSA/files/usr/lib/lua/luci/controller/modeminfo.lua

# Download modeminfo.htm
wget -O /usr/lib/lua/luci/view/modeminfo.htm \
https://raw.githubusercontent.com/Razifadm/luci-app-modeminfo/5GSA/files/usr/lib/lua/luci/view/modeminfo.htm

#sms tool
rm -f /usr/bin/sms_tool
wget -O /usr/bin/sms_tool \
https://raw.githubusercontent.com/Razifadm/luci-app-modeminfo/5GSA/sms_tool

# Bagi permission execute pada bin
chmod +x /usr/bin/modeminfo
chmod +x /usr/bin/sms_tool


echo "✅ modeminfo updated"
# Padam skrip ini sendiri
rm -f "$0"
