rng(1);
T_M = zeros(1,20);
T_N = zeros(1,20);
E_M_U = zeros(1,20);
E_N_U = zeros(1,20);
E_M_H = zeros(1,20);
E_N_H = zeros(1,20);

for l = 1:20
    disp(l);
    n = 2000 + 100*l;
    for k = 1:10
        [A,U,H] = gen_polar(n);
        [e_M_U,e_N_U,e_M_H,e_N_H,t_M,t_N] = error_polar(A,U,H);
        T_M(l) = T_M(l) + t_M/10;
        E_M_U(l) = E_M_U(l) + e_M_U/10;
        E_M_H(l) = E_M_H(l) + e_M_H/10;
        T_N(l) = T_N(l) + t_N/10;
        E_N_U(l) = E_N_U(l) + e_N_U/10;
        E_N_H(l) = E_N_H(l) + e_N_H/10;
    end
end
save('accuracy_polar_2000_4000','T_M','T_N','E_M_U','E_M_H','E_N_U','E_N_H');
