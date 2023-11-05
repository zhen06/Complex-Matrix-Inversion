rng(1);
sigma_1 = 10^(-3);
sigma_n = 10^(-4);
F_M = zeros(10,3);
F_N = zeros(10,3);
F_LU = zeros(10,3);
F_real = zeros(10,3);
for p = 0:2
    if p == 0
        precision = 0.5;
    else
        precision = p;
    end

    for l = 1:1
        disp(p);
        disp(l);
        n = 2^l;
        for k = 1:10
            [A,B,x,y,c,d] = generate_lineq_2(n,sigma_1,sigma_n,precision);
            z_M = ((A+j*B)\eye(n))  * (c+j*d);
            [Mx_err,My_err,Mtotal_err] = forward(x,y,real(z_M),imag(z_M));
            F_M(l,p+1) = F_M(l,p+1) + Mtotal_err/10;
            z_N = new_inv(A+j*B)*(c+j*d);
            [Nx_err,Ny_err,Ntotal_err] = forward(x,y,real(z_N),imag(z_N));
            F_N(l,p+1) = F_N(l,p+1) + Ntotal_err/10;
            z_LU = (A+j*B)\(c+j*d);
            [LUx_err,LUy_err,LUtotal_err] = forward(x,y,real(z_LU),imag(z_LU));
            F_LU(l,p+1) = F_LU(l,p+1) + LUtotal_err/10;
            z_real = [A,-B;B,A]\[c;d];
            [realx_err,realy_err,realtotal_err] = forward(x,y,real(z_real),imag(z_real));
            F_real(l,p+1) = F_real(l,p+1) + realtotal_err/10;
        end
    end
end
save('accuracy_forward_cond10_precisions','F_M','F_N','F_LU');