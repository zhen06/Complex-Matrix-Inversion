function [A,A_sqrt] = gen_sqrt(n)
    Z_real = rand(n);
    Z_imag = rand(n);
    Z = Z_real + 1j*Z_imag;
    J = (2+rand(n,1)) + 1j*(2+rand(n,1));
    J = diag(100*J);
    A_sqrt = Z*J/Z;
    A = A_sqrt*A_sqrt;
end