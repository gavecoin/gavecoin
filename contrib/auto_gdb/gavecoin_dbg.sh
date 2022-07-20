#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.gavecoincore/gavecoind.pid file instead
gavecoin_pid=$(<~/.gavecoincore/testnet3/gavecoind.pid)
sudo gdb -batch -ex "source debug.gdb" gavecoind ${gavecoin_pid}
