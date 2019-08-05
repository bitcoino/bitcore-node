#!/bin/bash

# install needed dependencies
sudo apt-get update
sudo apt-get install \
      build-essential pkg-config libc6-dev m4 g++-multilib \
      autoconf libtool ncurses-dev unzip git python python-zmq \
      zlib1g-dev wget curl bsdmainutils automake 

# zcashBitcore
cd
git clone -b v2.0.2-insight-explorer https://github.com/usdfork/zcash-patched-for-explorer.git zcashInsight
cd zcashInsight
./zcutil/fetch-params.sh
./zcutil/build.sh -j$(nproc)
cd
echo "Zcashd with extended RPC functionalities is prepared. Please run following command to install insight explorer for zcash"
echo "wget -qO- https://raw.githubusercontent.com/usdfork/bitcore-node-zecmate/master/installExplorer.sh | bash"