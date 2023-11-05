function [e_M,e_N,t_M,t_N] = error_syl(A,B,C,X)
    scale = comNorm(real(X),imag(X));
    tic
    X_M = newton_syl_matlab(A,B,C);
    t_M = toc;
    tic
    [X_N_real,X_N_imag] = newton_syl_new(A,B,C);
    t_N = toc;
    e_M = diffe(real(X_M),imag(X_M),real(X),imag(X))/scale;
    e_N = diffe(X_N_real,X_N_imag,real(X),imag(X))/scale;
end