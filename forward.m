function [x_err,y_err,total_err] = forward(x,y,x_hat,y_hat)
    x_err = norm(x-x_hat)/norm(x);
    y_err = norm(y-y_hat)/norm(y);
    total_err = norm(x-x_hat)^2 + norm(y-y_hat)^2;
    total_err = total_err/(norm(x)^2 + norm(y)^2);
end