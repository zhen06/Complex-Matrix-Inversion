function [Tm,Tn] = speed(n)
    Tm = 0;
    Tn = 0;
    for k = 1:10
        A = rand(n,n);
        B = rand(n,n);
        Z = A + 1j*B;
        tic
        n = size(A);
        n = n(1);
        Z_inv_M = Z\eye(n);
        Tm = Tm + toc/10;
        tic
        Z_inv_N = new_inv2(A,B);
        Tn = Tn + toc/10;
    end
end