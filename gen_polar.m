function [A,U,H] = gen_polar(n)
    B = rand(n) + 1j*rand(n);
    [U,R] = qr(B);
    C = rand(n) + 1j*rand(n);
    H = C'*C;
    A = U*H;
end