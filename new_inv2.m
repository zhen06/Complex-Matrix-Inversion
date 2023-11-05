function [Z_inv_real,Z_inv_imag] = new_inv2(A,B)
    n = size(A);
    n = n(1);
    X_2 = A\B;
    Z_inv_real = (A + B*X_2)\eye(n);
    Z_inv_imag = -X_2*Z_inv_real;
    %Z_inv = X_5 - 1j*X_6;
end