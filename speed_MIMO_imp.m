rng(1);
mu = 10;
sigma = 2;
T_M = zeros(50,1);
T_N = zeros(50,1);
for l = 1:50
    disp(l);
    n = 100 + 10*l;
    [t_M,t_N] = speed_MIMO(n,mu,sigma);
    T_M(l) = t_M;
    T_N(l) = t_N;
    disp(t_M-t_N);
end
%save('speed_MIMO','T_M','T_N')