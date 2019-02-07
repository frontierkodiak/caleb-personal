'''
This function is a topological simulation model for coextinctions in mutualistic networks. 
The function takes as input an interaction matrix with m plants and n pollinators (plants on the left side, pollinators on top).
A plant is considered to be extinct when it has lost all of its pollinators. 
''' 

'''
Options for algorithmic species removal
random:
method1    random: removes increasing proportions of all pollinator species, chosen at random without replacement.
systematic:
method2    pollinator species removed from least-linked to most-linked
method3    pollinator species removed from most-linked to least-linked
'''

import numpy as np
m = 100  #number of plants
n = 50  #number of pollinators
iterations = 50 #number of removal events

method = 2

matrix = np.random.rand(m,n)    #generate interaction/community matrix with random strengths
#the above is a jacobian matrix: elements reflect the direct effect of the avg individual of species j on species i's population-level rate of growth or decline

if method == 1:
    for i in range(iterations):     #continue to remove species until reaches defined # of removal events (iterations). later update
        # to run simulation until all plants are extinct (sexual reproduction failure, degree < 1)
        q = np.random.random_integers(0,n)  #randomly choose pollinator species to extinct
        matrix[:,q] = 0 #extinct pollinator species by assigning interaction strengths to zero
    
if method == 2:    #degree calculation for each pollinator (entries in each column. sum of weights???)
    degree = np.sum(matrix, axis=0) #vectorize this calculation
    order = np.sort(degree)    
    #generate list of pollinators, sorted by degree. lowest to highest. 
    #for i in range(list):         # extinct pollinator species as in method 1
        
#if method == 3:    #degree calculation for each pollinator (entries in each column. sum of weights???)
    #generate list of pollinators, sorted by degree. highest to lowest. 
    #for i in range(list):         # extinct pollinator species as in method 1
