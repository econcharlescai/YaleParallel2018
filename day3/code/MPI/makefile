
### Fortran compiler wrapper
FC=mpif90

### CPP compiler wrapper
CXX=mpicxx

### Optimization flags
FFLAGS=-O3

#######################################################################	

all: 1.hello_world_mpi.exec 2.ping_pong.exec 3.MPI_reduce.exec  \
     1a.hello_world_mpi_cpp.exec 2a.ping_pong.exec  \
     2a.integrate.exec 2c.integration.exec 2b.ringtopo.exec 2d.ringtopo.exec \
     3a.bcast.exec 3a.cpp.bcast.exec 3b.MPI_reduce.exec \

#######################################################################	

## Example 1
1.hello_world_mpi.exec: 1.hello_world_mpi.f90
	$(FC) $(FFLAGS) 1.hello_world_mpi.f90 -o 1.hello_world_mpi.exec

## Example 1a
1a.hello_world_mpi_cpp.exec: 1a.hello_world_mpi.cpp
	$(CXX) $(FFLAGS) 1a.hello_world_mpi.cpp -o 1a.hello_world_mpi_cpp.exec
	
## Example 2
2.ping_pong.exec: 2.ping_pong.f90
	$(FC) $(FFLAGS) 2.ping_pong.f90 -o 2.ping_pong.exec

## Example 2a cpp
2a.ping_pong.exec: 2a.ping_pong.cpp
	$(CXX) $(FFLAGS) 2a.ping_pong.cpp -o 2a.ping_pong.exec	
	
## Example 2a
2a.integrate.exec: 2a.integrate.f90
	$(FC) $(FFLAGS) 2a.integrate.f90 -o 2a.integrate.exec
	
## Example 2c -cpp
2c.integration.exec: 2c.integration.cpp
	$(CXX) $(FFLAGS) 2c.integration.cpp -o 2c.integrate.exec	
	
## Example 2b
2b.ringtopo.exec: 2b.ringtopo.f90
	$(FC) $(FFLAGS) 2b.ringtopo.f90 -o 2b.ringtopo.exec	

## Example 2d
2d.ringtopo.exec: 2d.ringtopo.cpp
	$(CXX) $(FFLAGS) 2d.ringtopo.cpp -o 2d.ringtopo.exec		
	
## Example 3
3.MPI_reduce.exec: 3.MPI_reduce.f90
	$(FC) $(FFLAGS) 3.MPI_reduce.f90 -o 3.MPI_reduce.exec

## Example b cpp
3b.MPI_reduce.exec: 3b.MPI_reduce.cpp
	$(CXX) $(FFLAGS) 3b.MPI_reduce.cpp -o 3b.MPI_reduce.exec	
	
## Example 3b
3a.bcast.exec: 3a.bcast.f90
	$(FC) $(FFLAGS) 3a.bcast.f90 -o 3a.bcast.exec	

## Example 3a
3a.cpp.bcast.exec: 3a.bcast.cpp
	$(CXX) $(FFLAGS) 3a.bcast.cpp -o 3a.cpp.bcast.exec	
	

#######################################################################	

clean :
	rm -f *.exec

#######################################################################	
