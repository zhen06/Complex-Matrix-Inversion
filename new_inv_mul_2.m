function [P_real,P_imag] = new_inv_mul_2(A,B,C,D)
    %compute (A+iB)^-1 (C+iD)
    n = size(A);
    n = n(1);
    P = [A,-B;B,A]\[C;D];
    P_real = P(1:n,1:n);
    P_imag = P(n+1:2*n,1:n);
end