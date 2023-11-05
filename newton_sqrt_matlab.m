function X = newton_sqrt_matlab(A,eps)
    i = 0;
    X = A;
    n = size(A);
    n = n(1);
    error = 1;
    while i<100 && error>eps
        X_prev = X;
        %X_inv = X\eye(n);
        %X = 1/2 * (X + X_inv*A);
        P = X\A;
        X = 1/2 * (X + P);
        i = i+1;
        U = X - X_prev;
        error = comNorm(real(U),imag(U))/comNorm(real(X),imag(X));
    end
end