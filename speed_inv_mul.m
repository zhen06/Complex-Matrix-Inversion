function [t_new,t_gauss] = speed_inv_mul(n)
    t_new = 0;
    t_gauss = 0;
    for k = 1:10
        A = rand(n);
        B = rand(n);
        C = rand(n);
        D = rand(n);
        tic
        new_inv_mul(A,B,C,D);
        t_new = t_new + toc/10;
        tic
        fast_inv_mul(A,B,C,D);
        t_gauss = t_gauss + toc/10;
    end
end