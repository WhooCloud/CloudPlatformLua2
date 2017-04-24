#!/bin/bash
#install openresty
wget https://openresty.org/download/openresty-1.11.2.2.tar.gz
cd
sudo apt-get update
sudo apt-get install -y libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl make build-essential

tar -xzvf openresty-1.11.2.2.tar.gz
cd openresty-1.11.2.2
sudo ./configure -j8
make -j8
sudo make install -j8
