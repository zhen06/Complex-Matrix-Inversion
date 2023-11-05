x = 1:10;
x = 1000 + 100*x;
x = log10(x);
extraInputs = {'interpreter','latex','fontsize',19};
plot(x,T_G,'-k',x,T_N,'-r');
xlabel('Logrithmic Dimension of the Matrices',extraInputs{:});
ylabel('Computation Time',extraInputs{:});
legend({'Gauss', 'New'},extraInputs{:});
legend('Location','northwest');