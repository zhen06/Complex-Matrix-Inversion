x = 1:20;
x = 83 + x;
x = floor(1.24.^x);
x = log10(x);
extraInputs = {'interpreter','latex','fontsize',19};
plot(x,E_M_R,'-k',x,E_N_R,'-r');
xlabel('Logrithmic Size of the Condition Number of B',extraInputs{:});
ylabel('Relative Right Residual',extraInputs{:});
legend({'MATLAB', 'Frobenius Inversion'},extraInputs{:});
legend('Location','northeastout');
title('Right Residual (I+iB)')
saveas(gcf, 'accuracy_right_eye_A.png');