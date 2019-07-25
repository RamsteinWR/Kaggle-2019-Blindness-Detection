#!/usr/bin/env bash

python train_regression_baseline.py -m reg_seresnext101_rms -a hard -f 0 -b 48 -l huber --fp16 -o Adam -d 0.5\
    -s multistep -lr 1e-4 -e 100 -es 10 -v --use-idrid --use-messidor --use-aptos2019
sleep 5

python train_regression_baseline.py -m reg_seresnext101_rms -a hard -f 1 -b 48 -l huber --fp16 -o Adam -d 0.5\
    -s multistep -lr 1e-4 -e 100 -es 10 -v --use-idrid --use-messidor --use-aptos2019
sleep 5

python train_regression_baseline.py -m reg_seresnext101_rms -a hard -f 2 -b 48 -l huber --fp16 -o Adam -d 0.5\
    -s multistep -lr 1e-4 -e 100 -es 10 -v --use-idrid --use-messidor --use-aptos2019
sleep 5

python train_regression_baseline.py -m reg_seresnext101_rms -a hard -f 3 -b 48 -l huber --fp16 -o Adam -d 0.5\
    -s multistep -lr 1e-4 -e 100 -es 10 -v --use-idrid --use-messidor --use-aptos2019
