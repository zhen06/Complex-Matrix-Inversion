function W = cholesky_inv(Z)
    n = size(Z);
    n = n(1);
    R = chol(Z);  %Z=R'R
    %W = R\(R'\eye(n));
    T = R\eye(n);
    W = T*T';
end