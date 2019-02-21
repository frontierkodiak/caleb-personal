function [outputArg1,outputArg2] = untitled2(inputArg1,inputArg2)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = inputArg1;
outputArg2 = inputArg2;
end

% Given a matrix randomely select a cell that isn't a zero and replace with
% a zero

    
    % https://stackoverflow.com/questions/18277978/how-to-replace-non-zero-elements-randomly-with-zero?rq=1
    
A= [0 1 1 1; 1 1 0 1; 1 1 0 1; 1 1 1 0]

% If you want to change each 1 with a certain probability:

p = 0.1%; % desired probability of change

A_ones = find(A); % linear index of ones in A
A_ones_change = A_ones(rand(size(A_ones))<=p); % entries to be changed
A(A_ones_change) = 0; % apply changes in those entries


% Pseudocode

% 1. Choose one AP chunk to use (lower left or upper right)

% 2. Specify which guild to start, then chose a target (first
% excinction).
%   Specify method (toggles for most/least general, random etc)

% See Viera for way to break when species is already extinct
% Through all of this into a forloop/ index
% 3. Allow co-exinction cascade (? Set rules for that)
%   1. See if still in equalibrium
%   2. Take the still alive network
%   3. Choose next unlucky species     
if(length(ext_animals)>0){
      for(i in 1:length(ext_animals)){
        unlucky <- rplants[pleft]*M[ext_animals[i],pleft,1] > runif(length(pleft))
        coext_plants = c(coext_plants,pleft[unlucky])
%   3a. if plants where picked first then next
%   should be a plant, if animal first animal
%   3a. if stochastic model, use probability of going extinct (extinction
%   risk) to tell you which next species to take
%   4. Replace the species matrix with species remaining
%   5. Calculate and save outputs


% As objects?
% 4. Set up outputs: degree table, frequency distribution for the total
% number of extinctions for each episode, 
% how often the extinction sequence ended in each extinction level
% R50

% 1. Choose one AP chunk to use (lower left or upper right)
% APchunk is the one with xxx in columns and xxx in rows

% 2. Specify which guild to start, then chose a target (first
% excinction).
%   Specify method (toggles for most/least general, random etc)
%   bipartite in R gives these: "random", "abundance", "degree", "external"

% Options for algorithmic species removal

% random:
method = 1;                    % [1, 2, 3], i.e. 1='random', 2='connectivity based', 3='' 
                               % 1= removes increasing proportions of all pollinator species, chosen at random without replacement.
                               % 2= connectivity based: pollinator species removed from least-linked to most-linked
                                    % pollinator species removed from most-linked to least-linked
    % maybe would be better to have method 2 be for connectivity in general
    % and then there is a way to specify direction of this

if method == 1
    for i = range(some stipulation regarding AP):     % continue to remove species until reaches defined # of removal events (iterations). later update
        % to run simulation until all plants are extinct (sexual reproduction failure, degree < 1)
        % or until no more secondary extinctions occur
        q = randsample(find(1:length(AP),1));% or change this to a while statement maybe) % randomly choose pollinator species to extinct
            % but need to constrain this to non zero values
            % randsample(find(A)) find gives non-zero values 

        AP[:,q] = 0;  % extinct pollinator species by assigning interaction strengths to zero
        
        % Alva uses this which might be a way to go to randomely select a non-zero element 
        idx = find(APchunk == 0);
            APchunk(idx(randperm(length(idx),nlinksBtwG-sum(sum(APchunk==1))))) = 1;


 ncol = number of columns you want
    x = randperm(find(size(data_sample,2),ncol)); % not sure if size is necessary here, I added the find which finds only non-zero elements
    columns = data_sample(:,x);

elseif method == 2
    for i = range(some stipulation regarding AP):
        
        if (partis.match == 1) {            % from the extinction function in bipartite for the method degree, note they embed this into the cascading function coextinction so this doesn't loop multiple times
            sequ <- rowSums(web > 0) % we might be able to get around this if statement to use cols or rows by: if target is animals use AP' (the transpose)
            which.ex <- which(sequ == max(sequ))
            if (length(which.ex) > 1) {
                ex <- sample(which.ex, size = 1)
            }
            else {
                ex <- which.ex
            }
            web[ex, ] <- 0
        }
        if (partis.match == 2) {
            sequ <- colSums(web > 0)
            which.ex <- which(sequ == max(sequ))
            if (length(which.ex) > 1) 
                ex <- sample(which.ex, size = 1)
            else ex <- which.ex
            web[, ex] <- 0
        }
    
 % syntax for for loop  
 % randsample vs calebs function
 % where to put the transpose if A and use AP if P