function [e_M,e_N,e_MN,t_M,t_N,t_MN] = error_sign2(A,S)
    A_real = real(A);
    A_imag = imag(A);
    scale = comNorm(real(S),imag(S));
    tic
    S_M = newton_sign_matlab(A);
    t_M = toc;
    tic
    [S_N_real,S_N_imag] = newton_sign_new(A_real,A_imag);
    t_N = toc;
    tic
    S_MN = newton_sign_new2(A);
    t_MN = toc;
    e_M = diffe(real(S_M),imag(S_M),real(S),imag(S))/scale;
    e_N = diffe(S_N_real,S_N_imag,real(S),imag(S))/scale;
    e_MN = diffe(real(S_MN),imag(S_MN),real(S),imag(S))/scale;
end