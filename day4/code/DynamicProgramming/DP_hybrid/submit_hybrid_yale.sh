#!/bin/bash

#SBATCH --job-name=hybrid
#SBATCH --output=hybrid_2x20CPU.txt
#SBATCH --error=hybrid_error.txt
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=20
#SBATCH --nodes=2
#SBATCH --time=00:10:00
#SBATCH --constraint=broadwell



export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

mpirun VFI
