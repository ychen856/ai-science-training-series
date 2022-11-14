
#!/bin/bash -l
#COBALT -t 60
#COBALT -q single-gpu
#COBALT -A ALCFAITP
#COBALT -n 1
#COBALT --attrs filesystems=home,grand

# Set up software deps:
module load conda/2022-07-01
conda activate

cd /home/ycchen/ai-science-training-series/07_largeScaleTraining/src/ai4sci
python main.py