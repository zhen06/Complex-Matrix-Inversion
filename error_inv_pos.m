function [e_M_L,e_M_R,e_N_L,e_N_R,e_MC_L,e_MC_R,e_NC_L,e_NC_R,t_M,t_MC,t_N,t_NC] = error_inv_pos(Z)
    A = real(Z);
    B = imag(Z);
    scale = comNorm(A,B);
    tic
    n = size(A);
    n = n(1);
    Z_inv_M = Z\eye(n);
    t_M = toc;
    tic
    Z_inv_MC = cholesky_inv(Z);
    t_MC = toc;
    tic
    [Z_inv_N_real,Z_inv_N_imag] = new_inv2(A,B);
    t_N = toc;
    tic
    [Z_inv_NC_real,Z_inv_NC_imag] = new_inv_cholesky(A,B);
    t_NC = toc;
    Z_inv_N = Z_inv_N_real + 1j*Z_inv_N_imag;
    Z_inv_NC = Z_inv_NC_real + 1j*Z_inv_NC_imag;
    M_L = Z_inv_M * Z;
    M_R = Z * Z_inv_M;
    MC_L = Z_inv_MC * Z;
    MC_R = Z * Z_inv_MC;
    N_L = Z_inv_N * Z;
    N_R = Z * Z_inv_N;
    NC_L = Z_inv_NC * Z;
    NC_R = Z * Z_inv_NC;
    scale_M = scale * comNorm(real(Z_inv_M),imag(Z_inv_M));
    scale_MC = scale * comNorm(real(Z_inv_MC),imag(Z_inv_MC));
    scale_N = scale * comNorm(Z_inv_N_real,Z_inv_N_imag);
    scale_NC = scale * comNorm(Z_inv_NC_real,Z_inv_NC_imag);
    e_M_L = diffe(real(M_L),imag(M_L),eye(n),zeros(n))/scale_M;
    e_M_R = diffe(real(M_R),imag(M_R),eye(n),zeros(n))/scale_M;
    e_MC_L = diffe(real(MC_L),imag(MC_L),eye(n),zeros(n))/scale_MC;
    e_MC_R = diffe(real(MC_R),imag(MC_R),eye(n),zeros(n))/scale_MC;
    e_N_L = diffe(real(N_L),imag(N_L),eye(n),zeros(n))/scale_N;
    e_N_R = diffe(real(N_R),imag(N_R),eye(n),zeros(n))/scale_N;
    e_NC_L = diffe(real(NC_L),imag(NC_L),eye(n),zeros(n))/scale_NC;
    e_NC_R = diffe(real(NC_R),imag(NC_R),eye(n),zeros(n))/scale_NC;
end