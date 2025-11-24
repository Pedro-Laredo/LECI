
T=        [0.7 0.2 0.1;
           0.2 0.3 0.5;
           0.3 0.3 0.4]';

disp(T);
%ex1  b
prob = 0.7*0.7;

fprintf("Prob of being sunny in second and third day: %.3f\n",prob);
%ex1 c
% índices dos estados que nao chove
idx = [1 2];


prob_notrain = 0;
for i = idx
    prob_notrain= prob_notrain + T(i,1) * sum( T(idx,i) );
end
fprintf("Prob not rain second and third day: %.3f\n", prob_notrain);   

%ex1 d
v = [1;0;0];
contador = v;
for i = 2:31
    v = T*v;
    contador = contador+v;
end








