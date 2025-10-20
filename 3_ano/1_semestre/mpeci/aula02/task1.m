% Generate a matrix with 3 rows and 10,000 columns of random numbers
% between 0.0 and 1.0 (i.e., each column represents an experiment):
experiments = rand(3,10000);
% Generate a matrix with 3 rows and 10,000 columns with the value 1 if
% the value of the previous matrix is less than 0.5 (i.e., if it came
% up heads) or with the value 0 otherwise (i.e., if it came up tails):
tosses = experiments<0.5;  % 0.5 corresponds to the prob. of heads
% Generate a row vector with 10,000 elements with the sum of the values
% of each column of the previous matrix (i.e., the number of heads in
% each experiment):
results = sum(tosses);
% Generate a row vector with 10,000 elements with the value 1 when the
% value of the previous vector is 2 (i.e., if the experiment gave 2 heads)
% or 0 when it is different from 2:
successes = results==2;
% Determine the result by dividing the number of experiments with 2 heads
% by the total number of experiments:
probSimulation = sum(successes)/10000


