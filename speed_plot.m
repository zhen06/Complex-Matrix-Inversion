x = 1:50;
x = 1000 + 100*x;
%x = log10(x);
extraInputs = {'interpreter','latex','fontsize',19};
plot(x(26:50),T_M(26:50),'-k',x(26:50),T_N(26:50),'-r');
%xlabel('Logarithmic Dimension of the Matrices',extraInputs{:});
xlabel('Dimension of the Matrices',extraInputs{:});
ylabel('Computation Time',extraInputs{:});
legend({'MATLAB', 'Frobenius'},extraInputs{:});
legend('Location','northwest');
title('Speed (General Matrices)')
ax = gca;
ax.TitleFontSizeMultiplier = 1.5;
%saveas(gcf, 'speed_plot_new_3600_6000.png');