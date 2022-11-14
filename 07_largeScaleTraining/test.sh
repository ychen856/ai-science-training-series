#!/bin/sh
#PBS -l select=1:system=polaris
#PBS -l place=scatter
#PBS -l walltime=1:00:00
#PBS -q debug
#PBS -A datascience
#PBS -l filesystems=home:eagle


# Set up software deps:
module load conda/2022-09-08
conda activate

cd /home/ycchen/ai-science-training-series/07_largeScaleTraining
python main.py