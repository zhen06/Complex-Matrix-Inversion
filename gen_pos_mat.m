function Z = gen_pos_mat(n,sigma)
    A = rand(n,n);
    B = rand(n,n);
    Z = A + 1j*B;
    Z = Z * Z' + sigma*eye(n);
end