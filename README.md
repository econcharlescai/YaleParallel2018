### Introduction to parallel programming in economics and finance

This is a introductory course on parallel programming, held at the 
Cowles Foundation at Yale in August/September 2018.


**Prerequisites:** Students should have prior knowledge in a programming language 
(a low-level language such as C++, C, Fortran would be beneficial, but is not required). 
Moreover, there should be interest in accessing parallel compute resources due to 
research projects that require non-trivial numerical methods. Students are encouraged to bring their own research projects to be discussed.  

### Purpose of the lecture

Parallel computation has, next to theory and experiments, become in many fields a well-established and recognized third pillar of science within the last couple of years. 
The emerging computing power available to researchers nowadays reaches up to hundreds of Petaflop/s,
which is several million times faster than an average laptop. 
This allows for computer-aided discoveries that would otherwise be impossible. Also in modern quantitative economics and 
finance, parallel computing has become a key workhorse. Indeed, processing for example enormous sets of data in a timely 
fashion is only possible through massive parallel computing resources. 
Moreover, many relevant applications in quantitative finance, such as the computation of 
large portfolio risks or the pricing of complex financial derivative products, are heavily accelerated by means of appropriate hardware. 

However, tapping parallel hardware resources efficiently is challenging. Indeed, 
for the greater part of computer history software has been written with a serial von
Neumann computer architecture in mind, in which a computer program -- in whatever programming language it is written -- 
is ultimately translated into a stream of instructions that are executed sequentially. 
Parallel programming is fundamentally different. A key task of the software developer is 
to identify parts of an algorithm that can be run concurrently or to transform a 
given serial algorithm into an algorithm suitable for concurrent execution.

This course is intended to provide students in economics and finance with a self-contained 
introduction to the extensive and broad topic of parallel computing, with a special 
focus on relevant applications. Topics covered include shared memory, distributed memory, 
hybrid parallel programming software developement, and the good scientific conduct necessary to deal
with the results from numerical applications. 
A key part of the course is devoted to hands-on labs based on 
smaller exercises as well as larger projects. 
### Lecturer
* [Simon Scheidegger](https://sites.google.com/site/simonscheidegger/) (HEC, University of Lausanne)


**Date** | **Time** | **Main Topics** 
-----|------|------
08.30.2018 | 1:30 - 3:00 pm | Introduction to HPC
09.06.2018 | 1:30 - 3:00 pm | Introduction to OpenMP
09.17.2018 | 4:00 - 5:30 pm | Introduction to MPI
09.24.2018 | 4:00 - 5:30 pm | Introduction to Hybrid parallelism and more advanced topics





