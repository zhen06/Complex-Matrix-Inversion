rng(1);
cond_num = 10;
T_M = zeros(12,1);
T_MC = zeros(12,1);
T_N = zeros(12,1);
T_NC = zeros(12,1);
E_MR = zeros(12,1);
E_MCR = zeros(12,1);
E_NR = zeros(12,1);
E_NCR = zeros(12,1);
E_ML = zeros(12,1);
E_MCL = zeros(12,1);
E_NL = zeros(12,1);
E_NCL = zeros(12,1);



for l = 1:12
    disp(l);
    n = 2^l;
    for k = 1:10
        Z = gen_pos_wellcond_mat(n,cond_num);
        [e_M_L,e_M_R,e_N_L,e_N_R,e_MC_L,e_MC_R,e_NC_L,e_NC_R,t_M,t_MC,t_N,t_NC] = error_inv_pos(Z);
        T_M(l) = T_M(l) + t_M/10;
        T_MC(l) = T_MC(l) + t_MC/10;
        T_N(l) = T_N(l) + t_N/10;
        T_NC(l) = T_NC(l) + t_NC/10;
        E_MR(l) = E_MR(l) + e_M_R/10;
        E_MCR(l) = E_MCR(l) + e_MC_R/10;
        E_NR(l) = E_NR(l) + e_N_R/10;
        E_NCR(l) = E_NCR(l) + e_NC_R/10;
        E_ML(l) = E_ML(l) + e_M_L/10;
        E_MCL(l) = E_MCL(l) + e_MC_L/10;
        E_NL(l) = E_NL(l) + e_N_L/10;
        E_NCL(l) = E_NCL(l) + e_NC_L/10;
    end
end
save('accuracy_positive_cond10_new','T_M','T_MC','T_N','T_NC','E_ML','E_MCL','E_NL','E_NCL','E_MR','E_MCR','E_NR','E_NCR');