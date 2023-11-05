function [X_real,X_imag] = newton_sign_new(A_real,A_imag)
    i = 0;
    X_real = A_real;
    X_imag = A_imag;
    error = 1;
    while i<100 && error>1e-1
        X_prev_real = X_real;
        X_prev_imag = X_imag;
        [X_inv_real,X_inv_imag] = new_inv2(X_real,X_imag);
        X_real = 1/2 * (X_real + X_inv_real);
        X_imag = 1/2 * (X_imag + X_inv_imag);
        i = i+1;
        U_real = X_real - X_prev_real;
        U_imag = X_imag - X_prev_imag;
        error = comNorm(U_real,U_imag)/comNorm(X_real,X_imag);
    end
end