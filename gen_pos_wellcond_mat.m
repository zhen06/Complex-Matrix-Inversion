function T = gen_pos_wellcond_mat(n,cond_num)
    S = randi([1,cond_num - 1],[n-2,1]);
    S = [S;cond_num;1];
    S = diag(S);
    U = gen_unitary(n);
    T = U*S*U';
    T = nearestSPD(T);
end