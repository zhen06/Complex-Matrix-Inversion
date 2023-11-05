function [e_M,e_N,t_M,t_N] = error_inv(Z,Z_inv)
    A = real(Z);
    B = imag(Z);
    scale = comNorm(A,B);
    tic
    n = size(A);
    n = n(1);
    Z_inv_M = Z\eye(n);
    t_M = toc;
    tic
    Z_inv_N = new_inv(A,B);
    t_N = toc;
    e_M = diffe(real(Z_inv_M),imag(Z_inv_M),real(Z_inv),imag(Z_inv))/scale;
    e_N = diffe(real(Z_inv_N),imag(Z_inv_N),real(Z_inv),imag(Z_inv))/scale;
end