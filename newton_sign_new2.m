function X = newton_sign_new2(A)
    i = 0;
    X = A;
    n = size(A);
    n = n(1);
    error = 1;
    while i<100 && error>1e-5
        X_prev = X;
        if error>1e-2
            X_inv = new_inv(real(X),imag(X));
        else
            %X = X_real + 1j*X_imag;
            X_inv = X\eye(n);
        end
        X = 1/2 * (X + X_inv);
        U = X - X_prev;
        error = comNorm(real(U),imag(U))/comNorm(real(X),imag(X));
        i = i+1;
    end
end