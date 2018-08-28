#!/bin/bash

#SBATCH --job-name=omp_job
#SBATCH --output=DP.out
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --time=10:00

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK


### openmp executable
./VFI

