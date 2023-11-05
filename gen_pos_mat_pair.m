function [A,A_inv] = gen_pos_mat_pair(n,cond_num)
    S = randi([1,cond_num - 1],[n-2,1]);
    S = [S;cond_num;1];
    S = sym(S);
    T = 1./S;
    S = diag(S);
    T = diag(T);
    H = sym(hadamard(n));
    H = H/sqrt(n);
    A = H*S*H';
    A_inv = H*T*H';
    A = double(A);
    A_inv = double(A_inv);
end