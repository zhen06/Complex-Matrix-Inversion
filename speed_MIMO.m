function [Tm,Tn] = speed_MIMO(n,mu,sigma)
    Tm = 0;
    Tn = 0;
    for k = 1:10
        %A = rand(n,n);
        %B = rand(n,n);
        N_T = n;
        N_R = n/2;
        [A,B] = gen_MIMO_2(N_R,N_T,mu,sigma);
        Z = A + 1j*B;
        tic
        n = size(A);
        n = n(1);
        Z_inv_M = Z\eye(n);
        Tm = Tm + toc/10;
        tic
        [Z_inv_N_real,Z_inv_N_imag] = new_inv2(A,B);
        Tn = Tn + toc/10;
    end