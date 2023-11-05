x = 1:10;
x = floor(2.^x);
x = log10(x);
extraInputs = {'interpreter','latex','fontsize',19};
plot(x,F_M(1:10),'-k',x,F_N(1:10),'-r',x,F_LU(1:10),'-b');
xlabel('Logrithmic Size of the Dimension',extraInputs{:});
ylabel('Forward Errors',extraInputs{:});
legend({'MATLAB', 'New', 'LU'},extraInputs{:});
legend('Location','northeastout');