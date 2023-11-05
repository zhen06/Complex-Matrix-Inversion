%x = 1:20;
%x = 83 + x;
%x = floor(1.24.^x);
%x = log10(x);
extraInputs = {'interpreter','latex','fontsize',19};
plot(x,T_M,'-k',x,T_N,'-r');
xlabel('Logarithmic Size of the Dimension',extraInputs{:});
ylabel('Computation Time',extraInputs{:});
legend({'MATLAB', 'Frobenius'},extraInputs{:});
legend('Location','northwest');
title('Speed (Well-conditioned Matrices)')
ax = gca;
ax.TitleFontSizeMultiplier = 1.5;
%saveas(gcf, 'speed_eye_A_dim_2048.png');