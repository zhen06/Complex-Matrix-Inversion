rng(1);
cond_num = 10;
T_M = zeros(12,1);
T_N = zeros(12,1);
E_M_L = zeros(12,1);
E_M_R = zeros(12,1);
E_N_L = zeros(12,1);
E_N_R = zeros(12,1);

for l = 1:12
    disp(l);
    n = 2^l;
    for k = 1:10
        A = gen_mat(n,cond_num);
        B = gen_mat(n,cond_num);
        Z = A + 1j*B;
        [e_M_L,e_M_R,e_N_L,e_N_R,t_M,t_N] = error_inv_back(Z);
        T_M(l) = T_M(l) + t_M/10;
        E_M_L(l) = E_M_L(l) + e_M_L/10;
        E_M_R(l) = E_M_R(l) + e_M_R/10;
        T_N(l) = T_N(l) + t_N/10;
        E_N_L(l) = E_N_L(l) + e_N_L/10;
        E_N_R(l) = E_N_R(l) + e_N_R/10;
    end
end
save('accuracy_cominv_Back_cond10','T_M','T_N','E_M_L','E_M_R','E_N_L','E_N_R');
