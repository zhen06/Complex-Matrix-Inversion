x = 1:20;
x = 2000 + 100*x;
x = log10(x/2);
extraInputs = {'interpreter','latex','fontsize',19};
extraInputs_2 = {'interpreter','latex','fontsize',9};
plot(x,E_M,'-k',x,E_N,'-r');
xlabel('Logarithmic Dimension of the Matrices',extraInputs{:});
ylabel('Relative Forward Error',extraInputs{:});
legend({'MATLAB', 'Frobenius'},extraInputs_2{:});
legend('Location','southeast');
%title('Accuracy (Sylvester Equation)')
title('Accuracy (Lyapunov Equation)')
ax = gca;
ax.TitleFontSizeMultiplier = 1.5;
saveas(gcf, 'accuracy_plot_sylvester_new_2000_4000.png');