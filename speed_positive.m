function [t_M,t_MC,t_N,t_NC] = speed_positive(Z)
    n = size(Z);
    n = n(1);
    A = real(Z);
    B = imag(Z);
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
end