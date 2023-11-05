function X = newton_polar_matlab(A)
    n = size(A);
    n = n(1);
    i = 0;
    X = A;
    error = 1;
    while i<100 && error>1e-3
        X_prev = X;
        X_inv = X\eye(n);
        X = 1/2 * (X + X_inv');
        i = i+1;
        E = X - X_prev;
        error = comNorm(real(E),imag(E))/comNorm(real(X),imag(X));
    end
end