#!/bin/bash
#SBATCH -o job.%j.out
#SBATCH --partition=GPU
#SBATCH --qos=low
#SBATCH -J TEST.DHC
#SBATCH --nodes=2                 # 申请一个节点
#SBATCH --ntasks-per-node=11
#SBATCH --gres=gpu:1              # 每个节点上申请一块GPU卡

python3 train.py