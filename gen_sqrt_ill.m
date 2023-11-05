function [A,A_sqrt] = gen_sqrt_ill(n)
    Z_real = rand(n);
    Z_imag = rand(n);
    Z = Z_real + 1j*Z_imag;
    J = (500+30000*rand(n,1)) + 1j*(500+30000*rand(n,1));
    J = diag(J);
    A_sqrt = Z*J/Z;
    A = A_sqrt*A_sqrt;
end