i_min = 0;
ratio_min = 1;
for i = 1:50
    ratio = T_NC(i)/T_MC(i);
    if (ratio < ratio_min)
        ratio_min = ratio;
        i_min = i;
    end
end