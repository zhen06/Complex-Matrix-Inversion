function [e_M_L,e_M_R,e_N_L,e_N_R,e_N_pre_L,e_N_pre_R,t_M,t_N,t_N_pre] = error_inv_back_pre(Z)
    A = real(Z);
    B = imag(Z);
    scale = comNorm(A,B);
    n = size(A);
    n = n(1);
    tic
    Z_inv_M = Z\eye(n);
    t_M = toc;
    tic
    Z_inv_N = new_inv(Z);
    t_N = toc;
    tic
    p = rand(n,1);
    P = diag(p);
    Z_inv_pre_N = new_inv(P*Z)*P;
    t_N_pre = toc;
    M_L = Z_inv_M * Z;
    M_R = Z * Z_inv_M;
    N_L = Z_inv_N * Z;
    N_R = Z * Z_inv_N;
    N_pre_L = Z_inv_pre_N * Z;
    N_pre_R = Z * Z_inv_pre_N;
    scale_M = scale * comNorm(real(Z_inv_M),imag(Z_inv_M));
    scale_N = scale * comNorm(real(Z_inv_N),imag(Z_inv_N));
    scale_N_pre = scale * comNorm(real(Z_inv_pre_N),imag(Z_inv_pre_N));
    e_M_L = diffe(real(M_L),imag(M_L),eye(n),zeros(n))/scale_M;
    e_M_R = diffe(real(M_R),imag(M_R),eye(n),zeros(n))/scale_M;
    e_N_L = diffe(real(N_L),imag(N_L),eye(n),zeros(n))/scale_N;
    e_N_R = diffe(real(N_R),imag(N_R),eye(n),zeros(n))/scale_N;
    e_N_pre_L = diffe(real(N_pre_L),imag(N_pre_L),eye(n),zeros(n))/scale_N_pre;
    e_N_pre_R = diffe(real(N_pre_R),imag(N_pre_R),eye(n),zeros(n))/scale_N_pre;
end