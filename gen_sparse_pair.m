function [A,B] = gen_sparse_pair(n,sparsity)
    B = gen_sparse(n,sparsity);
    C = gen_sparse(n,sparsity);
    A = C\eye(n);
end