rng(1);
T_M = zeros(20,1);
T_N = zeros(20,1);
E_M = zeros(20,1);
E_N = zeros(20,1);

for l = 1:20
    disp(l);
    n = 2000 + 100*l;
    p = n/2;
    q = n/2;
    for k = 1:10
        [A,S] = gen_sign_matrix(n,p,q);
        [e_M,e_N,t_M,t_N] = error_sign(A,S);
        T_M(l) = T_M(l) + t_M/10;
        E_M(l) = E_M(l) + e_M/10;
        T_N(l) = T_N(l) + t_N/10;
        E_N(l) = E_N(l) + e_N/10;
    end
end
save('accuracy_sign_New_2000_4000','T_M','T_N','E_M','E_N');
