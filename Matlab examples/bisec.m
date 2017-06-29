% Find root of x^2-1 in [0,1.8] using bisection method
clc;
clear all

a = 0;
fa = fun(a);
b = 1.8;
fb = fun(b);

while b-a > 0.001
       x = (a+b)/2;
    fx = fun(x);
    if abs(fx) < 0.001
        break
    elseif fx*fa < 0
        b = x;
        fb = fx;
    else
        a = x;
        fa = fx;
    end    
    
end
