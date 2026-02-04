#!/bin/bash

#SBATCH --job-name=train-resnet50
#SBATCH --partition=cocosys
#SBATCH --account=cocosys
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=14
#SBATCH --time=16:00:00
#SBATCH --output=train-resnet50.out
#SBATCH --error=train-resnet50.out

source ~/.bashrc
micromamba activate timm
bash train_resnet50.sh
