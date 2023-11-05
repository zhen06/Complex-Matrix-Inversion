function A = gen_upper(n)
    m = n/2;
    A11 = rand(m);
    A12 = rand(m);
    A22 = rand(m);
    A21 = zeros(m);
    A = [A11,A12;A21,A22];
end