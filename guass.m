function [P_real,P_imag] = guass(A,B,C,D)
    P_1 = (A+B)*(C+D);
    P_2 = A*C;
    P_3 = B*D;
    P_real = P_2 - P_3;
    P_imag = P_1 - P_2 - P_3;
end