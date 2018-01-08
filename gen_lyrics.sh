#!/bin/bash

./gentxt.py --model mr_children.npz --primetext "$1" --length 100 --train train.txt
