function prob = coin_prob_sim(p, nTosses, kHeads, nExperiments)
% COIN_PROB_SIM  Estima a probabilidade de obter exatamente kHeads caras
% em nTosses lancamentos de moeda, por simulacao Monte Carlo.

    tosses = rand(nTosses, nExperiments) < p;  % 1=cara, 0=coroa
    numHeads = sum(tosses);                    % nº de caras em cada experiencia
    successes = (numHeads == kHeads);          % marca as experiencias com kHeads
    prob = sum(successes) / nExperiments;      % frequencia relativa
end
prob = coin_prob_sim(0.5, 15, 6, 1e5)