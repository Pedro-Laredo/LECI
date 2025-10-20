p = 0.5;   % probabilidade de sucesso (ex: rapaz)
n = 2;     % numero de ensaios (ex: filhos)
k = 1;     % numero de sucessos desejados

% Formula binomial: P(X=k)
prob = nchoosek(n,k) * p^k * (1-p)^(n-k);

fprintf('Probabilidade de exatamente %d sucessos em %d ensaios = %.4f\n', k, n, prob);
