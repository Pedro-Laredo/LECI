xi = 1:6;
p = ones(1,6)/6;
subplot(1,2,1), stem(xi,p), xlabel("x"), ylabel("p(x)");
subplot(1,2,2), stairs([0 xi],[0 F],'LineWidth',1.5), grid on, title('1(b)'), xlabel('x'), ylabel('F_X(x)')
