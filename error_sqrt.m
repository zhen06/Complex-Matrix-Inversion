function [e_M,e_N,t_M,t_N] = error_sqrt(A,A_sqrt,eps)
    scale = comNorm(real(A_sqrt),imag(A_sqrt));
    A_real = real(A);
    A_imag = imag(A);
    tic
    X_M = newton_sqrt_matlab(A,eps);
    t_M = toc;
    tic
    [X_N_real,X_N_imag] = newton_sqrt_new(A_real,A_imag,eps);
    t_N = toc;
    e_M = diffe(real(X_M),imag(X_M),real(A_sqrt),imag(A_sqrt))/scale;
    e_N = diffe(X_N_real,X_N_imag,real(A_sqrt),imag(A_sqrt))/scale;
end