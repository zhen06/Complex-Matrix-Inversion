x = 1:12;
x = 2.^x;
x = log10(x);
extraInputs = {'interpreter','latex','fontsize',19};
plot(x,E_M_L,'-k',x,E_N_L,'-r');
xlabel('Logarithmic Size of the Dimension',extraInputs{:});
ylabel('Relative Left Residual',extraInputs{:});
legend({'MATLAB', 'Frobenius'},extraInputs{:});
title('Right Residual (Well-conditioned Matrices)')
ax = gca;
ax.TitleFontSizeMultiplier = 1.5;
legend('Location','northwest');