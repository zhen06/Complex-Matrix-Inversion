x = 1:20;
x = 2000 + 100*x;
x = log10(x);
extraInputs = {'interpreter','latex','fontsize',19};
plot(x,E_M,'-k',x,E_N,'-r');
xlabel('Logarithmic Dimension of the Matrices',extraInputs{:});
ylabel('Relative Forward Error',extraInputs{:});
legend({'MATLAB', 'Frobenius'},extraInputs{:});
legend('Location','northeast');
title('Accuracy (Matrix Sign Function)')
ax = gca;
ax.TitleFontSizeMultiplier = 1.5;
saveas(gcf, 'accuracy_plot_sign_new_2000_4000.png');