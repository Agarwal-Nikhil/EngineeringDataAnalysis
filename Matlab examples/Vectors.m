clc;
clear all;

% Create a row vector
v1 = [3 1 7 -21];

% Create a column vector
v2 = [3;1;7;-21];

% Create a column vector by transposing a row vector
v3 = [3 1 7 -21]';

% Create a vector with regularly spaced elements
u = [1:2:7];    % elements from 1 to 7 with increments of 2

% Access individual entries
x=u(2);

% Access specific parts of vector
w = u(1:2:4);    % elements from 1 to 4 with increments 2

% Number of elements of a vector
y=length(w);

% Create regularly spaced vector
t = linspace(0,50,6);


