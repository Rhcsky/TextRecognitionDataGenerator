#!/usr/bin/env bash
# train_basic 9000
python3 create_lmdb_dataset.py --inputPath out --gtFile out/gt_basic.txt --outputPath lmdb_out/training/basic/;

# train_skew 9000
python3 create_lmdb_dataset.py --inputPath out --gtFile out/gt_skew.txt --outputPath lmdb_out/training/skew/;

# val_distortion 3000
python3 create_lmdb_dataset.py --inputPath out --gtFile out/gt_dist.txt --outputPath lmdb_out/validation/dist/;

# val_blur 3000
python3 create_lmdb_dataset.py --inputPath out --gtFile out/gt_blur.txt --outputPath lmdb_out/validation/blur/;

# val_background 3000
python3 create_lmdb_dataset.py --inputPath out --gtFile out/gt_back.txt --outputPath lmdb_out/validation/back/;