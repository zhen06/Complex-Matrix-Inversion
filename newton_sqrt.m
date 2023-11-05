function X = newton_sqrt(A,inv_alg)
    i = 0;
    X = A;
    error = 1;
    while i<100 && error>1e-2
        X_prev = X;
        X_inv = inv_alg(X);
        X = 1/2 * (X + X_inv*A);
        i = i+1;
        U = X - X_prev;
        error = comNorm(real(U),imag(U))/comNorm(real(X),imag(X));
    end
end