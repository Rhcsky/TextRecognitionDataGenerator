#!/usr/bin/env bash
# train_basic 
python trdg/run.py -c 30000 -w 10 -f 64 --thread_count 18 -dt trdg/total_dict.txt --length 3 --extension jpg --output_dir out/basic;

# train_skew 
python trdg/run.py -c 15000 -w 10 -f 64 --thread_count 18 -k 5 -rk -dt trdg/total_dict.txt --length 3 --extension jpg --output_dir out/skew;
python trdg/run.py -c 15000 -w 10 -f 64 --thread_count 18 -k 15 -rk -dt trdg/total_dict.txt --length 3 --extension jpg --output_dir out/skew;

# val_distortion 
python trdg/run.py -c 1500 -w 10 -f 64 --thread_count 18 -d 3 -do 0 -dt trdg/total_dict.txt --length 3 --extension jpg --output_dir out/dist;
python trdg/run.py -c 1500 -w 10 -f 64 --thread_count 18 -d 3 -do 1 -dt trdg/total_dict.txt --length 3 --extension jpg --output_dir out/dist;
python trdg/run.py -c 1500 -w 10 -f 64 --thread_count 18 -d 3 -do 2 -dt trdg/total_dict.txt --length 3 --extension jpg --output_dir out/dist;

# val_blur 
python trdg/run.py -c 1500 -w 10 -f 64 --thread_count 18 -dt trdg/total_dict.txt --length 3 --extension jpg -bl 1 --output_dir out/blur;
python trdg/run.py -c 1500 -w 10 -f 64 --thread_count 18 -dt trdg/total_dict.txt --length 3 --extension jpg -bl 2 --output_dir out/blur;
python trdg/run.py -c 1500 -w 10 -f 64 --thread_count 18 -dt trdg/total_dict.txt --length 3 --extension jpg -bl 4 --output_dir out/blur;

# val_background 
python trdg/run.py -c 1500 -w 10 -f 64 --thread_count 18 -dt trdg/total_dict.txt --length 3 --extension jpg -b 0 --output_dir out/back;
python trdg/run.py -c 1500 -w 10 -f 64 --thread_count 18 -dt trdg/total_dict.txt --length 3 --extension jpg -b 1 --output_dir out/back;
python trdg/run.py -c 1500 -w 10 -f 64 --thread_count 18 -dt trdg/total_dict.txt --length 3 --extension jpg -b 2 --output_dir out/back;