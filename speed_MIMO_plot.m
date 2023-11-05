x = 1:50;
x = 100 + 10*x;
x = log10(x);
extraInputs = {'interpreter','latex','fontsize',19};
plot(x,T_M,'-k',x,T_N,'-r');
xlabel('Logrithmic Dimension of the Matrices',extraInputs{:});
ylabel('Computation Time',extraInputs{:});
legend({'MATLAB', 'New'},extraInputs{:});
legend('Location','northwest');