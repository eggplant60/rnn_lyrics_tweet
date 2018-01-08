#!/bin/bash

function usage(){
   echo "[usage] $0 -t <train_text> -m <model>"
}


if [ $# -ne 4 ]; then
    usage
    exit 1
fi


while getopts t:m:h OPT
do
    case $OPT in
	t)  TRAIN=$OPTARG
	    ;;
	m)  MODEL=$OPTARG
	    ;;
	h)  usage
	    ;;
	\?) usage
	    ;;
    esac
done

./train_ptb.py --train $TRAIN --model $MODEL
