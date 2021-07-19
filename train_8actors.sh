#!/bin/bash
#SBATCH -o job.TRAIN.DHC.%j.out
#SBATCH --partition=GPU36
#SBATCH --qos=low
#SBATCH -J TRAIN.DHC
#SBATCH --nodes=1                 # 申请一个节点
#SBATCH --cpus-per-task=18
#SBATCH --gres=gpu:1              # 每个节点上申请一块GPU卡
#SBATCH --mail-type=all
#SBATCH --mail-user=yuailun@pku.edu.cn

python3 -u train.py