clear all;
clc;
% Find root of the function x^2-1 in interval [0,1.8] using bisection method:

a = 0;          % define interval boundaries
b = 1.8;
fa = a^2-1;
fb = b^2-1;

while b-a > 0.001
    x = (a+b)/2;        % root value after iteration is finished
    fx = x^2-1;
    
    if abs(fx) < 0.001  % use if and break statement to check if the function is close 
                         %  to zero at value x, if so => exit the loop
        break
        
    elseif fx*fa < 0    % test sign of product and continue to search for the root value
        b = x;
        fb = fx;
    else
        a = x;
        fa = fx;
    end    
end


% % Check, if there are negativ values in a vector: 
% v = [0.3 -0.5 0.2 0.8 -0.1];
% u = v<0;                      % u is a vector of logical values
% if any(u)
%     w=v(u);
% else
%     disp('all values are positive');
% end
