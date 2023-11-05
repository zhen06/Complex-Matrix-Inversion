function A = gen_positive_matrix(n)
    a = (9*ones(1,n) + rand(1,n)) + 1j*(9*ones(1,n) + rand(1,n));
    %a = (ones(1,n) + rand(1,n)) + 1j*(ones(1,n) + rand(1,n));
    %a = rand(1,n) + 1j*rand(1,n);
    J = diag(a);
    Z_real = rand(n);
    Z_imag = rand(n);
    Z = Z_real + 1j*Z_imag;
    A = Z*J/Z;
    %disp(cond(A));
end