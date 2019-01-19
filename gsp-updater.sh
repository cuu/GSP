#!/bin/bash
echo $'\n******* Updating GSP, any local changes will be lost!'
git fetch --all
git reset --hard origin/master

echo $'\n******* Re-reating shortcuts'
echo LD_LIBRARY_PATH=/home/cpi/apps/nwjs-sdk-v0.27.6-linux-arm/lib /home/cpi/apps/nwjs-sdk-v0.27.6-linux-arm/nw /home/cpi/games/GSP  --use-gl=egl --ignore-gpu-blacklist --disable-accelerated-2d-canvas --num-raster-threads=2 --remote-debugging-port=9222 > /home/cpi/apps/Menu/21_Indie\ Games/GSPLauncher/GSPLauncher.sh

chmod +x /home/cpi/apps/Menu/21_Indie\ Games/GSPLauncher/GSPLauncher.sh
cp ./common/GSPLauncher.png /home/cpi/apps/Menu/21_Indie\ Games/GSPLauncher/
