function Z_inv = new_inv(Z)
    A = real(Z);
    B = imag(Z);
    n = size(A);
    n = n(1);
    X_2 = A\B;
    X_5 = (A + B*X_2)\eye(n);
    X_6 = X_2*X_5;
    Z_inv = X_5 - 1j*X_6;
end