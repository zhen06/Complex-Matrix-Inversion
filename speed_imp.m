rng(1);
T_M = zeros(50,1);
T_N = zeros(50,1);
for l = 1:50
    disp(l);
    n = 1000 + 100*l;
    [t_M,t_N] = speed(n);
    T_M(l) = t_M;
    T_N(l) = t_N;
end
save('speed_new','T_M','T_N')