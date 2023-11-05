x = 1:12;
x = 2.^x;
x = log10(x);
extraInputs = {'interpreter','latex','fontsize',9};
extraInputs2 = {'interpreter','latex','fontsize',16};
plot(x,E_ML,'-k',x,E_MCL,'-g',x,E_NL,'-r',x,E_NCL,'-b');
xlabel('Logarithmic Dimension of the Matrices',extraInputs2{:});
ylabel('Relative Left Residual',extraInputs2{:});
legend({'MATLAB', 'Cholesky', 'Frobenius', 'Variant of Frobenius'},extraInputs{:});
legend('Location','northwest');
title('Left Residual (Positive Well-conditioned Matrices)')
ax = gca;
ax.TitleFontSizeMultiplier = 1.5;