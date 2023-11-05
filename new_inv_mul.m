function [P_real,P_imag] = new_inv_mul(A,B,C,D)
    %compute (A+iB)^-1 (C+iD)
    n = size(A);
    n = n(1);
    N = size(C);
    N = N(1);
    X_2 = A\B;
    %Z_inv_real = (A + B*X_2)\eye(n);
    %Z_inv_imag = -X_2*Z_inv_real;
    P = (A + B*X_2)\[C,D];
    Q = X_2*P;
    %P_rr = P(1:n,1:n);
    %P_ri = P(1:n,n+1:2*n);
    %P_rr = (A + B*X_2)\C;
    %P_ri = (A + B*X_2)\D;
    %P_ir = -X_2*P_rr;
    %P_ii = -X_2*P_ri;
    %P_real = P_rr - P_ii;
    %P_imag = P_ri + P_ir;
    %P_real = P_rr + X_2*P_ri;
    %P_imag = P_ri - X_2*P_rr;
    P_real = P(1:n,1:N) + Q(1:n,N+1:2*N);
    P_imag = P(1:n,N+1:2*N) - Q(1:n,1:N);
end