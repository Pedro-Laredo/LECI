
n = 1000*8; %bits
p = 1e-5;
lam = n*p;

P_binomial = 1 - (1-p)^n - n*p*(1-p)^(n-1);


P0 = (lam^0 / factorial(0)) * exp(-lam);
P1 = (lam^1/factorial(1)) * exp(-lam);
P_poisson = 1-(P0 + P1);

fprintf("Binomial: %.10f\n",P_binomial);
fprintf("Poisson: %.10f\n",P_poisson);