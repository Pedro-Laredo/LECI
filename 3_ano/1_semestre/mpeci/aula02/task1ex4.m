%% Code 2 - Analytical calculation of probability in series of
% Bernoulli experiments
% Data related to problem 1
% Exemplo 1: probabilidade de exatamente k caras em n lancamentos
p = 0.5;
k = 2;
n = 3;
prob_exata = nchoosek(n,k) * p^k *(1-p)^(n-k)