n = 100*8; 
p  = 1e-5;
lam = n*p;
P_binomial = (1 - p)^n;
P_poisson = exp(-lam);
fprintf('Binomial: %.10f\nPoisson:  %.10f\n', P_binomial, P_poisson);