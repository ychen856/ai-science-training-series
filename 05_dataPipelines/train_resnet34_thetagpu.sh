#!/bin/bash -l
#COBALT -t 60
#COBALT -q single-gpu
#COBALT -n 1
#COBALT --attrs filesystems=home,grand

# Set up software deps:
module load conda/2022-07-01
conda activate

# You have to point this to YOUR local copy of ai-science-training-series
cd /home/ycchen/ai-science-training-series/05_dataPipelines

export TF_XLA_FLAGS="--tf_xla_auto_jit=2"
python train_resnet34.py
