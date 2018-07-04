#!/usr/bin/env bash

# should run this script in Docker container

### step 1: prepare training images (comment this step if already done before)

### convert the training images to yolt2 accepts



# train the yolt

# e.g. train boats and planes
cd /yolt/scripts
python yolt2.py \
    --mode train \
    --outname 3class_boat_plane \
    --object_labels_str  boat,boat_harbor,airplane \
    --cfg_file ave_standard.cfg  \
    --nbands 3 \
    --train_images_list_file boat_airplane_all.txt \
    --single_gpu_machine 0 \
    --keep_valid_slices False \
    --max_batches 60000 \
    --gpu 0



