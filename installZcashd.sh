#!/bin/bash

# install needed dependencies
sudo apt-get update
sudo apt-get install \
      build-essential pkg-config libc6-dev m4 g++-multilib \
      autoconf libtool ncurses-dev unzip git python python-zmq \
      zlib1g-dev wget curl bsdmainutils automake 

# zcashBitcore
cd
git clone https://github.com/bitzec/bitzec-patched-for-explorer.git
cd bitzec-patched-for-explorer
./zcutil/fetch-params.sh
./zcutil/build.sh --disable-tests -j$(nproc)
cd
echo "bitzecd with extended RPC functionalities is prepared. Please run following command to install insight explorer for bitzec"
echo "wget -qO- https://raw.githubusercontent.com/usdfork/bitcore-node-zecmate/master/installExplorer.sh | bash"
