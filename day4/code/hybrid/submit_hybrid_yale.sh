#!/bin/bash

#SBATCH --job-name=hybrid
#SBATCH --output=hydrid_job.txt
#SBATCH --ntasks=8
#SBATCH --cpus-per-task=5
#SBATCH --nodes=2
#SBATCH --time=10:00

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

mpirun hello_hybrid.mpi