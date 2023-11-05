function [X_real,X_imag] = newton_syl_new(A,B,C)
    m = size(A);
    m = m(1);
    n = size(B);
    n = n(1);
    M = [A,-C;zeros(n,m),-B];
    [S_real,S_imag] = newton_sign_new(real(M),imag(M));
    X_real = -S_real(1:m,m+1:m+n)/2;
    X_imag = -S_imag(1:m,m+1:m+n)/2;
end