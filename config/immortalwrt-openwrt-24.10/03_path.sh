#!/bin/bash

# Clean old packages from both luci and modem feeds
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/modem/applications/luci-app-passwall

rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/modem/applications/luci-app-openclash
 
git clone https://github.com/intannajwa/mamamiya.git

cp -r mamamiya/luci-app-passwall feeds/luci/applications/
cp -r mamamiya/luci-app-openclash feeds/luci/applications/ 

rm -rf mamamiya

 ./scripts/feeds update luci
# ./scripts/feeds install -f -p luci luci-app-passwall luci-app-openclash luci-app-qbittorrent
