#!/bin/csh
apt-get install lsb lsb-core lsb-base
sudo ln -s /tmp /usr/
sudo ln -sf /usr/lib/x86_64-linux-gnu/libtiff.so.5 /usr/lib/x86_64-linux-gnu/libtiff.so.3
sudo apt-get install libmng2
sudo ln -sf /usr/lib/x86_64-linux-gnu/libmng.so.2 /usr/lib/x86_64-linux-gnu/libmng.so.1
