function W = cholesky_inv_old(Z)
    n = size(Z);
    n = n(1);
    R = chol(Z);  %Z=R'R
    W = R\(R'\eye(n));
end