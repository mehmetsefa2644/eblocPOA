#!/bin/bash
DATADIR="/c/mehmetsefa/Dersler/CMPE483/eblocPOA"
geth --datadir "$DATADIR/private" attach "http://localhost:8545" console
