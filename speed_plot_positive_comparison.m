x = 1:50;
x = 1000 + 100*x;
x = log10(x);
extraInputs = {'interpreter','latex','fontsize',9};
extraInputs2 = {'interpreter','latex','fontsize',16};
plot(x(26:50),T_M(26:50),'-k',x(26:50),T_MC(26:50),'-g',x(26:50),T_N(26:50),'-r',x(26:50),T_NC(26:50),'-b');
xlabel('Logarithmic Dimension of the Matrices',extraInputs2{:});
ylabel('Computation Time',extraInputs2{:});
legend({'Cholesky old', 'Cholesky', 'Variant of Frobenius old', 'Variant of Frobenius'},extraInputs{:});
legend('Location','northwest');
title('Speed (Positive Hermitian Matrices)')
ax = gca;
ax.TitleFontSizeMultiplier = 1.5;