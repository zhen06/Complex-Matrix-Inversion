rng(1);
n = 32;
T_M = zeros(100,1);
T_N = zeros(100,1);
E_M = zeros(100,1);
E_N = zeros(100,1);

for l = 1:100
    disp(l);
    cond_num = floor(1.24^(l+23));
    disp(cond_num)
    for k = 1:10
        [Z,Z_inv] = gen_matpair(n,cond_num);
        [e_M,e_N,t_M,t_N] = error_inv(Z,Z_inv);
        T_M(l) = T_M(l) + t_M/10;
        E_M(l) = E_M(l) + e_M/10;
        T_N(l) = T_N(l) + t_N/10;
        E_N(l) = E_N(l) + e_N/10;
    end
end
save('accuracy_cominv_32','T_M','T_N','E_M','E_N');
