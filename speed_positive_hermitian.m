rng(1);
sigma = 0.01;
T_M = zeros(50,1);
T_MC = zeros(50,1);
T_N = zeros(50,1);
T_NC = zeros(50,1);

for l = 1:50
    disp(l);
    n = 1000 + 100*l;
    for k = 1:10
        Z = gen_pos_mat(n,sigma);
        [t_M,t_MC,t_N,t_NC] = speed_positive(Z);
        T_M(l) = T_M(l) + t_M/10;
        T_MC(l) = T_MC(l) + t_MC/10;
        T_N(l) = T_N(l) + t_N/10;
        T_NC(l) = T_NC(l) + t_NC/10;
    end
end
save('speed_positive_1100_6000_new','T_M','T_MC','T_N','T_NC');