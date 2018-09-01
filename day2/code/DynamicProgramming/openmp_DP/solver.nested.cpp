/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 * solver.cpp
 * 
 * This defines the ValIt function, which takes the Old Value 
 * Function Guess and performs one Value function iteration.
 * 
 * Simon Scheidegger -- 06/18.
 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/ 

#include <iostream>
#include <stdio.h>
#include "param.hpp"
#include "econ.hpp"
#include "omp.h"

using namespace Eigen;

/* Value Function Iteration. 
 * The following defines the routine for one iteration of value function iteration, 
 * and produces the new value function. This is the Bellman equation. 
 * In this problem, the control (knext here) is discrete, so maximization reduces to computing a list of 
 * values implied by all possible choices, and taking the max. */

MatrixXd ValIt(MatrixXd ValOld) {
    
    // Initialize Value Function to Matrix of Zeros
    MatrixXd ValNew=MatrixXd::Zero(nk, ntheta);
    
    /* Create Policy Function Matrix. This matrix stores the optimal policy for each (k, theta) combination.
    We Initialize it to a matrix of zeros.
     */
    
    MatrixXd Policy=MatrixXd::Zero(nk, ntheta);
    
    // Create Index Variable for Storing the index of the optimal policy choice
    MatrixXd::Index maxIndex;
    
    // The following array will contain the consumption choices implied by each policy
    ArrayXd c(nk);
    
    // Temp will contain the list of values implied by each policy choice
    ArrayXd temp(nk);
    
    /*
     The following is the economics part of the program. For each state (theta, k), we compute the new value and policy functions 
     at that state. Since the problem is discrete, we compute the value of each possible action and choose
     the one that yields the highest value. These policies and new values will then be part of our new value and policy function guesses.
    
     Since we are using OpenMP, we parallelize over the capital states.
     */
  
    #pragma omp parallel private(maxIndex, c, temp)
    {
	/* We distribute the following for loop among the threads. 
	 * That is, we distribute the capital states
	 * among the threads */
    #pragma omp for collapse(2)   //the collapse clause is needed such that both loops are parallelized at the same time
    for (int itheta=0; itheta<ntheta; itheta++) {
    // OpenMP is initialized and the threads are created.
  
            for (int ik=0; ik<nk; ik++) {
                
                /*
                 Given the theta state, we now determine the new value and optimal policies corresponding to each
                 capital state.
                 */
                
                // Compute the consumption quantities implied by each policy choice
                c=f(kgrid(ik), thetagrid(itheta))-kgrid;
                
                // Compute the list of values implied implied by each policy choice
                temp=util(c) + beta*ValOld*p(thetagrid(itheta));

                /* Take the max of temp and store its location.
                 The max is the new value corresponding to (ik, itheta).
                 The location corresponds to the index of the optimal policy choice in kgrid.
                 
                 We store the new value and the corresponding policy information in the ValNew and Policy matrices.
                 
                 */
                
                ValNew(ik, itheta)=temp.maxCoeff(&maxIndex);
                
                Policy(ik, itheta)=kgrid(maxIndex);
            }
        }
    }
    
    // Concatenate ValNew and Policy into a single (2nk x ntheta) matrix.
    MatrixXd result(2*nk, ntheta);
    
    result<< ValNew, Policy;
    
    
    return result;
}
