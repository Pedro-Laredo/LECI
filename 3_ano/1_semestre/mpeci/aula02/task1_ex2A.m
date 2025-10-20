%% Code 1 - second version
N = 1e4; % number of experiments
p = 0.5; % probability of heads
k = 6; % number of heads
n = 15; % number of tosses
tosses = rand(n,N) < p;
successes = sum(tosses) == k;
probSimulation = sum(successes)/N
