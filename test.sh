#!/bin/bash

sudo apt-get install build-essential

pkgs='apt install wget && apt install curl && apt install make && apt install gcc'
if ! dpkg -s $pkgs >/dev/null 2>&1; then
  echo "You must install these packages before: " $pkgs
  exit
fi

cd /tmp/
wget http://www.datsi.fi.upm.es/~frosal/sources/shc-3.8.9.tgz
tar xvfz shc-3.8.9.tgz
mkdir /opt/shc
mv shc-3.8.9 /opt/shc/
cd /opt/shc/shc-3.8.9
make
ln -s /opt/shc/shc-3.8.9/shc /usr/local/bin
