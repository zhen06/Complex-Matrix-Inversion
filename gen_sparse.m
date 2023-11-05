function A = gen_sparse(n,sparsity)
    max_num = 1/sparsity;
    S = randi([0,max_num],n);
    S = S<1;
    R = sprand(S);
    A = full(R);
end