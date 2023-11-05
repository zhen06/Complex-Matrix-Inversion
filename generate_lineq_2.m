function [A,B,x,y,c,d] = generate_lineq_2(n,sigma_1,sigma_n,precision)
    [L,dummy,R] = svd(randn(n) + j*rand(n));
    svalues = logspace(log10(sigma_1), log10(sigma_n), n);
    c = rand(n,1);
    d = rand(n,1);
    S = diag(svalues);
    invS = diag(svalues.^-1);
    Z = L * S * R';
    A = real(Z);
    B = imag(Z);
    Z_Inv = R * invS * L';
    b = c + j*d;
    z = R * (invS * (L' * b));
    x = real(z);
    y = imag(z);

    if precision == 0.5
        A = half(A);
        B = half(B);
        x = half(x);
        y = half(y);
        c = half(c);
        d = half(d);
    end

    if precision == 1
        A = single(A);
        B = single(B);
        x = single(x);
        y = single(y);
        c = single(c);
        d = single(d);
    end
end