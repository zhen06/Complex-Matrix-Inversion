function [K_5,K_6] = new_inv_cholesky(A,B)
    n = size(A);
    n = n(1);
    R = chol(A); %A=R'R
    K_1 = R'\B;
    K_2 = R\K_1; %K_2=A^-1B
    U = chol(A - K_1'*K_1); %K1'K1 = -BA^-1B
    %W_1 = R\eye(n);
    %K_1 = W_1'*B;
    %K_2 = W_1*K_1;
    %U = chol(A - K_1'*K_1);
    %K_5 = U\(U'\eye(n));
    T = U\eye(n);
    K_5 = T*T';
    K_6 = -K_2 * K_5;
end