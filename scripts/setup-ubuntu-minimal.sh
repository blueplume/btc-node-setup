# Ubuntu-minimal btc install script

# ssh server
sudo apt-get install openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh

# btc
sudo apt-get install git build-essential software-properties-common autoconf libtool pkg-config libboost-all-dev libssl-dev libprotobuf-dev protobuf-compiler libevent-dev libqt4-dev libcanberra-gtk-module
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev

git clone https://github.com/bitcoin/bitcoin.git
cd bitcoin
git checkout v0.19.0.1
./autogen.sh
./configure
make -j $(nproc)
