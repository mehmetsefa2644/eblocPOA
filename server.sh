#!/bin/bash

DATADIR="/c/mehmetsefa/Dersler/CMPE483/eblocPOA"
nohup geth --datadir $DATADIR/private --port 3000 --rpcaddr 127.0.0.1 --rpc --rpcport 8545 --rpccorsdomain="*" --networkid 23422 --rpcapi eth,net,web3,personal,admin,miner &

sleep 6

echo "loadScript(\"$DATADIR"/pass.js"\")" | geth --datadir "/c/mehmetsefa/Dersler/CMPE483/eblocPOA" attach "http://localhost:8545"  console
echo "net"                                | geth --datadir "/c/mehmetsefa/Dersler/CMPE483/eblocPOA" attach "http://localhost:8545"  console
bash stats.sh 
