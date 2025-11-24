% Valores possíveis
x = 0:2;
y = 0:2;

% Marginais (valores obtidos no exercicio anterior)
Px = [0.5 0.3 0.2]; 
Py = [0.4 0.45 0.15];

% Médias
Ex = sum(x .* Px);
Ey = sum(y .* Py);

% Segundos momentos
Ex2 = sum(x.^2 .* Px);
Ey2 = sum(y.^2 .* Py);

% Variâncias
Varx = Ex2 - Ex^2;
Vary = Ey2 - Ey^2;

fprintf('E[X] = %.2f, Var(X) = %.2f\n', Ex, Varx);
fprintf('E[Y] = %.2f, Var(Y) = %.4f\n', Ey, Vary);
