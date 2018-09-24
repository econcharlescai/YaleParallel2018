#!/bin/bash
# a sample job submission script to submit an OpenMP job  

# set the job name to pardiso
#SBATCH --job-name=pardiso

# send output to pardiso.out
#SBATCH --output=pardiso.out

# this job requests node
#SBATCH --ntasks=1

# and request 8 cpus per task for OpenMP threads
#SBATCH --cpus-per-task=8

#SBATCH --time=00:02:00
#SBATCH --constraint=broadwell

module load Libs/GCC/5.2.0
module load Libs/netlib

# set OMP_NUM_THREADS to the number of --cpus-per-task we asked for
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Run the process with mpirun. Notice -n is not required. mpirun will
# automatically figure out how many processes to run from the slurm options
### openmp executable
./test
