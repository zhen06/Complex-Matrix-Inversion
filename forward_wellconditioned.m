rng(1);
sigma_1 = 10^(-3);
sigma_n = 10^(-4);
F_M = zeros(12,1);
F_N = zeros(12,1);
F_LU = zeros(12,1);
for l = 1:12
    disp(l);
    n = 2^l;
    for k = 1:10
        [A,B,x,y,c,d] = generate_lineq(n,sigma_1,sigma_n);
        z_M = inv(A+j*B)*(c+j*d);
        [Mx_err,My_err,Mtotal_err] = forward(x,y,real(z_M),imag(z_M));
        F_M(l) = F_M(l) + Mtotal_err/10;
        z_N = new_inv(A,B)*(c+j*d);
        [Nx_err,Ny_err,Ntotal_err] = forward(x,y,real(z_N),imag(z_N));
        F_N(l) = F_N(l) + Ntotal_err/10;
        z_LU = (A+j*B)\(c+j*d);
        [LUx_err,LUy_err,LUtotal_err] = forward(x,y,real(z_LU),imag(z_LU));
        F_LU(l) = F_LU(l) + LUtotal_err/10;
    end
end
save('accuracy_forward_cond10','F_M','F_N','F_LU');