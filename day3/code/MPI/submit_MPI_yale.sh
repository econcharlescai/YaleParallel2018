#!/bin/bash

#SBATCH --job-name=mpi
#SBATCH --output=mpi_job.txt
#SBATCH --ntasks=20
#SBATCH --time=00:01:00


mpirun 1a.hello_world_mpi_cpp.exec
