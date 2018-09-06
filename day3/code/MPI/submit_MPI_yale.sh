#!/bin/bash

#SBATCH --job-name=mpi
#SBATCH --output=mpi_job.txt
#SBATCH --ntasks=120
#SBATCH --time=10:00


mpirun 1a.hello_world_mpi_cpp.exec
