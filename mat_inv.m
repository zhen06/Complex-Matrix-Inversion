function X = mat_inv(A)
    n = size(A);
    n = n(1);
    X = A\eye(n);
end