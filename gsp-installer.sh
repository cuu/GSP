#!/bin/bash
echo $'\n******* 1) Installing NWjs...'
wget https://github.com/LeonardLaszlo/nw.js-armv7-binaries/releases/download/v0.27.6/nwjs-sdk-v0.27.6-linux-arm.tar.gz
tar -xvf nwjs-sdk-v0.27.6-linux-arm.tar.gz
sudo cp nwjs-sdk-v0.27.6-linux-arm/lib/*.so /usr/lib
sudo apt-get update
sudo apt-get install libnss3-dev
echo $'\n******* 2) Updating GSP, any local changes will be lost!'
git fetch --all
git reset --hard origin/master
echo $'\n******* 3) Creating shortcuts'
mkdir -p /home/cpi/apps/Menu/GameShell/GSPLauncher/

echo /home/cpi/apps/nwjs-sdk-v0.27.6-linux-arm/nw /home/cpi/games/GSP --use-gl=egl --ignore-gpu-blacklist --disable-accelerated-2d-canvas --num-raster-threads=2 --remote-debugging-port=9222 > /home/cpi/apps/Menu/GameShell/GSPLauncher/GSPLauncher.sh
chmod +x /home/cpi/apps/Menu/GameShell/GSPLauncher/GSPLauncher.sh
cp ./common/GSPLauncher.png /home/cpi/apps/Menu/GameShell/GSPLauncher/GSPLauncher.png
echo $'\n******* 4) removing archives...'
#rm *.tar.gz
echo "***********************************************************************************"
echo "* If no errors, reload your GameShell Launcher UI and select the GSPLauncher icon *" 
echo "*                                HAVE FUN!                                        *"
echo "***********************************************************************************"
