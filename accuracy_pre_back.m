rng(1);
n = 256;
T_M = zeros(20,1);
T_N = zeros(20,1);
T_N_pre = zeros(20,1);
E_M_L = zeros(20,1);
E_M_R = zeros(20,1);
E_N_L = zeros(20,1);
E_N_R = zeros(20,1);
E_N_pre_L = zeros(20,1);
E_N_pre_R = zeros(20,1);

for l = 1:20
    %disp(l);
    cond_num = floor(1.24^(l+83));
    %disp(cond_num)
    for k = 1:10
        %A = gen_mat(n,2);
        %A = eye(n);
        A = gen_mat(n,cond_num);
        B = gen_mat(n,cond_num);
        Z = A + 1j*B;
        [e_M_L,e_M_R,e_N_L,e_N_R,e_N_pre_L,e_N_pre_R,t_M,t_N,t_N_pre] = error_inv_back_pre(Z);
        T_M(l) = T_M(l) + t_M/10;
        E_M_L(l) = E_M_L(l) + e_M_L/10;
        E_M_R(l) = E_M_R(l) + e_M_R/10;
        T_N(l) = T_N(l) + t_N/10;
        E_N_L(l) = E_N_L(l) + e_N_L/10;
        E_N_R(l) = E_N_R(l) + e_N_R/10;
        T_N_pre(l) = T_N_pre(l) + t_N_pre/10;
        E_N_pre_L(l) = E_N_pre_L(l) + e_N_pre_L/10;
        E_N_pre_R(l) = E_N_pre_R(l) + e_N_pre_R/10;
    end
end
save('accuracy_pre_A_eye_back_dim_2048','T_M','T_N','T_N_pre','E_M_L','E_M_R','E_N_L','E_N_R','E_N_pre_L','E_N_pre_R');
