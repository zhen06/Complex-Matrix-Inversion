function [e_M,e_N,e_N_pre,t_M,t_N,t_N_pre] = error_inv_pre(Z,Z_inv)
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
    tic
    p = rand(n,1);
    P = diag(p);
    Z_inv_N_pre = new_inv(P*A,P*B)*P;
    t_N_pre = toc;
    e_M = diffe(real(Z_inv_M),imag(Z_inv_M),real(Z_inv),imag(Z_inv))/scale;
    e_N = diffe(real(Z_inv_N),imag(Z_inv_N),real(Z_inv),imag(Z_inv))/scale;
    e_N_pre = diffe(real(Z_inv_N_pre),imag(Z_inv_N_pre),real(Z_inv),imag(Z_inv))/scale;
end