x = 1:20;
x = 2000 + 100*x;
x = log10(x);
extraInputs = {'interpreter','latex','fontsize',19};
plot(x,T_M,'-k',x,T_N,'-r');
xlabel('Logarithmic Dimension of the Matrices',extraInputs{:});
ylabel('Computation Time',extraInputs{:});
legend({'MATLAB', 'Frobenius'},extraInputs{:});
legend('Location','northwest');
title('Speed (Polar Decomposition)')
ax = gca;
ax.TitleFontSizeMultiplier = 1.5;
saveas(gcf, 'speed_plot_polar_2000_4000.png');