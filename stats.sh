#!/bin/bash
#To see your node on http://ebloc.cmpe.boun.edu.tr:3015
DATADIR="/c/mehmetsefa/Dersler/CMPE483/eblocPOA"
pm2 delete app
INSTANCE_NAME=sefa RPC_HOST=localhost WS_SERVER=http://79.123.177.145:3015 WS_SECRET=63r98c3uz0cyg68v RPC_PORT=8545 LISTENING_PORT=30303 pm2 start $DATADIR/eth-net-intelligence-api/app.js
