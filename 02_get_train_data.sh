#!/bin/bash

JUMAN_CLIENT='ruby /root/juman/client.rb'

function usage(){
   echo "[usage] $0 <input_name>"
}

if [ $# -lt 1 ]; then
    usage
    exit 1
fi

cat $1 | $JUMAN_CLIENT | \
    awk '{print $1}' | grep -v '@' > $1.juman 
