function [e_M_U,e_N_U,e_M_H,e_N_H,t_M,t_N] = error_polar(A,U,H)
    A_real = real(A);
    A_imag = imag(A);
    scale_U = comNorm(real(U),imag(U));
    scale_H = comNorm(real(H),imag(H));
    tic
    U_M = newton_polar_matlab(A);
    H_M = U_M'*A;
    t_M = toc;
    tic
    [U_N_real,U_N_imag] = newton_polar_new(A_real,A_imag);
    H_N = (U_N_real' - 1j*U_N_imag')*A;
    t_N = toc;
    e_M_U = diffe(real(U_M),imag(U_M),real(U),imag(U))/scale_U;
    e_N_U = diffe(U_N_real,U_N_imag,real(U),imag(U))/scale_U;
    e_M_H = diffe(real(H_M),imag(H_M),real(H),imag(H))/scale_H;
    e_N_H = diffe(real(H_N),imag(H_N),real(H),imag(H))/scale_H;
end