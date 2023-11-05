function [K_5,K_6] = new_inv_cholesky_old(A,B)
    n = size(A);
    n = n(1);
    R = chol(A); %A=R'R
    K_1 = R'\B;
    K_2 = R\K_1; %K_2=A^-1B
    U = chol(A - K_1'*K_1); %K1'K1 = -BA^-1B 
    K_5 = U\(U'\eye(n));
    K_6 = -K_2 * K_5;
end
