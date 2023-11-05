function X = newton_syl_matlab(A,B,C)
    m = size(A);
    m = m(1);
    n = size(B);
    n = n(1);
    M = [A,-C;zeros(n,m),-B];
    %disp(cond(M));
    S = newton_sign_matlab(M);
    X = -S(1:m,m+1:m+n)/2;
end