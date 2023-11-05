rng(1);
n = 2048;
T_M = zeros(20,1);
T_N = zeros(20,1);
E_M_L = zeros(20,1);
E_M_R = zeros(20,1);
E_N_L = zeros(20,1);
E_N_R = zeros(20,1);

for l = 1:20
    %disp(l);
    cond_num = floor(1.24^(l+83));
    %disp(cond_num)
    for k = 1:10
        %A = gen_mat(n,2);
        %A = eye(n);
        A = gen_mat(n,cond_num/10);
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
save('accuracy_A_eye_back_dim_2048','T_M','T_N','E_M_L','E_M_R','E_N_L','E_N_R');
