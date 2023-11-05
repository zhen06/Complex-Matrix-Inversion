function [A,S] = gen_sign_matrix(n,p,q)
    Z_real = rand(n);
    Z_imag = rand(n);
    Z = Z_real + 1j*Z_imag;
    a = -rand(1,p) + 1j*rand(1,p);
    b = rand(1,q) + 1j*rand(1,q);
    J = [a,b];
    J = diag(J);
    A = Z*J/Z;
    d_1 = -ones(1,p);
    d_2 = ones(1,q);
    d = [d_1,d_2];
    D = diag(d);
    S = Z*D/Z;
end