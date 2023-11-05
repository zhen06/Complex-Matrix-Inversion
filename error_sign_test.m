function [e_M,e_N,t_M,t_N,E_M,E_N,i_M,i_N] = error_sign_test(A,S)
    A_real = real(A);
    A_imag = imag(A);
    scale = comNorm(real(S),imag(S));
    tic
    [S_M,E_M,i_M] = newton_sign_matlab_test(A);
    t_M = toc;
    tic
    [S_N_real,S_N_imag,E_N,i_N] = newton_sign_new_test(A_real,A_imag);
    t_N = toc;
    e_M = diffe(real(S_M),imag(S_M),real(S),imag(S))/scale;
    e_N = diffe(S_N_real,S_N_imag,real(S),imag(S))/scale;
end