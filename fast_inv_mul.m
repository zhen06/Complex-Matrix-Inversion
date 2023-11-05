function [P_real,P_imag] = fast_inv_mul(A,B,C,D)
    %compute (A+iB)^-1 (C+iD)
    [Z_inv_real,Z_inv_imag] = new_inv2(A,B);
    [P_real,P_imag] = guass(Z_inv_real,Z_inv_imag,C,D);
end