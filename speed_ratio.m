i_min = 0;
ratio_min = 1;
for i = 26:50
    ratio = T_N(i)/T_M(i);
    if (ratio < ratio_min)
        ratio_min = ratio;
        i_min = i;
    end
end