P = [0.30 0.20 0.00;
     0.10 0.15 0.05;
     0.00 0.10 0.10];
x = 0:2; y = 0:2;

% marginais (já obtidas antes)
Px = sum(P,2); Py = sum(P,1);
Ex = sum(x .* Px.');  Ex2 = sum((x.^2) .* Px.');
Ey = sum(y .* Py);    Ey2 = sum((y.^2) .* Py);
Varx = Ex2 - Ex^2;    Vary = Ey2 - Ey^2;

% E[XY], Cov e rho
[XX,YY] = ndgrid(x,y);              % combinações (i,j) alinhadas com P
Exy = sum(sum(XX .* YY .* P));      % E[XY]
CovXY = Exy - Ex*Ey;                % covariância
rho   = CovXY / sqrt(Varx*Vary);    % coeficiente de correlação

fprintf('E[XY] = %.4f\nCov(X,Y) = %.4f\nrho = %.4f\n', Exy, CovXY, rho);
