
N = 1e5;                % numero de familias simuladas
p = 0.5;                % probabilidade de rapaz
n = 2;                  % numero de filhos

tosses   = rand(n, N) < p;     % 1=rapaz, 0=rapariga
numBoys  = sum(tosses, 1);     % rapazes por familia
success  = (numBoys >= 1);     % pelo menos um rapaz
probSim  = mean(success);      % estimativa por simulacao

fprintf('Probabilidade estimada (>=1 rapaz em 2 filhos) = %.4f\n', probSim);
