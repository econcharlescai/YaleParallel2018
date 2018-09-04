#!/bin/bash

#SBATCH --job-name=omp_job
#SBATCH --output=DP_job.txt
#SBATCH --error=DP_error.txt
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=00:00:10

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK


### openmp executable
./VFI

