x = 1:12;
x = 2.^x;
x = log10(x);
extraInputs = {'interpreter','latex','fontsize',9};
extraInputs2 = {'interpreter','latex','fontsize',16};
plot(x,T_M,'-k',x,T_MC,'-g',x,T_N,'-r',x,T_NC,'-b');
xlabel('Logarithmic Dimension of the Matrices',extraInputs2{:});
ylabel('Computation Time',extraInputs2{:});
legend({'MATLAB', 'Cholesky', 'Frobenius', 'Variant of Frobenius'},extraInputs{:});
legend('Location','northwest');
title('Speed (Positive Well-conditioned Matrices)')
ax = gca;
ax.TitleFontSizeMultiplier = 1.5;