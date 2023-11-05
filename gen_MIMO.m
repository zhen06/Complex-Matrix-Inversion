function [A,B] = gen_MIMO(N_R,N_T,mu,sigma)
    H_real = mu + sigma * randn(N_R,N_T);
    H_imag = mu + sigma * randn(N_R,N_T);
    H = H_real + 1j*H_imag;
    M = H'*H + sigma^2 * eye(N_T);
    A = real(M);
    B = imag(M);
end