#!/bin/bash

#SBATCH --job-name=hybrid
#SBATCH --output=100k_hybrid_600CPU.txt
#SBATCH --error=hybrid_error.txt
#SBATCH --ntasks=30
#SBATCH --cpus-per-task=20
#SBATCH --nodes=30
#SBATCH --time=00:02:00
#SBATCH --constraint=broadwell



export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

mpirun VFI
