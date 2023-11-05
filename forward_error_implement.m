rng(1);
n = 256;
sigma_n = 10^(-4);
F_M = zeros(30,1);
F_N = zeros(30,1);
F_LU = zeros(30,1);
F_Mx = zeros(30,1);
F_Nx = zeros(30,1);
F_LUx = zeros(30,1);
F_My = zeros(30,1);
F_Ny = zeros(30,1);
F_LUy = zeros(30,1);
for l = 1:30
    disp(l);
    sigma_1 = 2^l * sigma_n;
    for k = 1:10
        [A,B,x,y,c,d] = generate_lineq(n,sigma_1,sigma_n);
        z_M = inv(A+j*B)*(c+j*d);
        [Mx_err,My_err,Mtotal_err] = forward(x,y,real(z_M),imag(z_M));
        F_Mx(l) = F_Mx(l) + Mx_err/10;
        F_My(l) = F_My(l) + My_err/10;
        F_M(l) = F_M(l) + Mtotal_err/10;
        z_N = new_inv(A,B)*(c+j*d);
        [Nx_err,Ny_err,Ntotal_err] = forward(x,y,real(z_N),imag(z_N));
        F_Nx(l) = F_Nx(l) + Nx_err/10;
        F_Ny(l) = F_Ny(l) + Ny_err/10;
        F_N(l) = F_N(l) + Ntotal_err/10;
        z_LU = (A+j*B)\(c+j*d);
        [LUx_err,LUy_err,LUtotal_err] = forward(x,y,real(z_LU),imag(z_LU));
        F_LUx(l) = F_LUx(l) + LUx_err/10;
        F_LUy(l) = F_LUy(l) + LUy_err/10;
        F_LU(l) = F_LU(l) + LUtotal_err/10;
    end
end
save('accuracy_forward_256','F_M','F_N','F_LU','F_Mx','F_Nx','F_LUx','F_My','F_Ny','F_LUy');



