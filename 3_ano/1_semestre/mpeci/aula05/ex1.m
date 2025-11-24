% Dados da distribuição conjunta P(X,Y)
% linhas -> X = 0,1,2 ; colunas -> Y = 0,1,2
P = [0.30 0.20 0.00;
     0.10 0.15 0.05;
     0.00 0.10 0.10];

x = 0:2;   % valores possíveis de X
y = 0:2;   % valores possíveis de Y

% Verificação (soma total = 1)
%assert(abs(sum(P,"all") - 1) < 1e-12, "A tabela não soma 1.")

% Marginais
Px = sum(P, 2);   % soma por colunas -> P_X(x)
Py = sum(P, 1);   % soma por linhas -> P_Y(y)

% Mostrar valores no console
disp(table(x.', Px, 'VariableNames', {'x','P_X'}))
disp(table(y.', Py.', 'VariableNames', {'y','P_Y'}))

% Gráficos
figure('Color','w');
subplot(1,2,1);
bar(x, Px);
title('PMF marginal de X');
xlabel('x'); ylabel('P_X(x)'); grid on; ylim([0 1]);

subplot(1,2,2);
bar(y, Py);
title('PMF marginal de Y');
xlabel('y'); ylabel('P_Y(y)'); grid on; ylim([0 1]);
