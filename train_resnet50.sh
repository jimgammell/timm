#!/bin/bash

python train.py "$SCRATCH/imagenet/imagenet2012/" \
    --model resnet50 \
    --epochs 90 \
    --batch-size 1024 \
    --opt sgd \
    --momentum 0.9 \
    --weight-decay 1e-4 \
    --sched step \
    --decay-epochs 30 \
    --decay-rate 0.1 \
    --lr-base 0.1 \
    --lr-base-size 256 \
    --warmup-epochs 0 \
    --smoothing 0.1 \
    --aa rand-m9-mstd0.5-inc1 \
    --reprob 0.25 \
    --amp --amp-dtype bfloat16 \
    --output ./output \
    --experiment resnet50_imagenet_90ep \
    --workers=14 \
    --pin-mem \
    --per-example-datafile-path ./output/per_example_losses.h5
