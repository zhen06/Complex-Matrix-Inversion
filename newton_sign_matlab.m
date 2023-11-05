function X = newton_sign_matlab(A)
    n = size(A);
    n = n(1);
    i = 0;
    X = A;
    error = 1;
    while i<100 && error>1e-1
        X_prev = X;
        X_inv = X\eye(n);
        X = 1/2 * (X + X_inv);
        i = i+1;
        U = X - X_prev;
        error = comNorm(real(U),imag(U))/comNorm(real(X),imag(X));
    end
end