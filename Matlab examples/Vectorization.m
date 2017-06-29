x = [ 1 2 3 4 5 ];           % vector of values to square
y1 = zeros(size(x));         % initialize new vector


for i = 1 : numel(x)         % for each index
    y1(i) = x(i)^2;          % square the value
end                          % end of loop

% Vectorized way: 
x = [ 1 2 3 4 5 ];           % vector of values to square
y2 = x.^2;                   % square all the values
