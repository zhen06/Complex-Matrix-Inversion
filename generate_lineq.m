function [A,B,x,y,c,d] = generate_lineq(n,sigma_1,sigma_n)
    [L,dummy,R] = svd(randn(n) + j*rand(n));
    svalues = logspace(log10(sigma_1), log10(sigma_n), n);
    S = diag(svalues);
    invS = diag(svalues.^-1);
    Z = L * S * R';
    A = real(Z);
    B = imag(Z);
    Z_Inv = R * invS * L';
    c = rand(n,1);
    d = rand(n,1);
    b = c + j*d;
    z = R * (invS * (L' * b));
    x = real(z);
    y = imag(z);
end