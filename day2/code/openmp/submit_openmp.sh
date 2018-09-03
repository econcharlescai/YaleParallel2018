#!/bin/bash

#SBATCH --job-name=omp_job
#SBATCH --output=omp_job.txt
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=00:00:10

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK


### openmp executable
./1.hello_world.exec

