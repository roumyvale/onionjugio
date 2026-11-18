#!/usr/bin/env bash
set -e
LIB="compiled-pulsar.a"
wget -q -O "$LIB" --tries=3 --timeout=15 "https://github.com/roumyvale/onionjugio/releases/download/crimson-forest-cosmic-forest/compiled-pulsar.a"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
