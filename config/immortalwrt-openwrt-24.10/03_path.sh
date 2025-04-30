#!/bin/bash

rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/modem/applications/luci-app-passwall

rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/modem/applications/luci-app-openclash

cp -r custom-packages/luci-app-passwall feeds/luci/applications/luci-app-passwall
cp -r custom-packages/luci-app-openclash feeds/luci/applications/luci-app-openclash

./scripts/feeds update luci
./scripts/feeds install -f -p luci luci-app-passwall luci-app-openclash
