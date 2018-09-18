#!/bin/bash

#SBATCH --job-name=mpi_test_20_MPI
#SBATCH --output=20MPI.txt
#SBATCH --error=20MPI_error.txt
#SBATCH --ntasks=20
#SBATCH --time=00:05:00


mpirun VFI
