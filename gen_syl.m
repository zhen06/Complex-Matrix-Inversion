function [A,B,C,X] = gen_syl(m,n)
    A = gen_positive_matrix(m);
    %B = gen_positive_matrix(n);
    B = A';
    X = rand(m,n) + 1j*rand(m,n);
    C = A*X + X*B;
    %disp(cond(C));
end