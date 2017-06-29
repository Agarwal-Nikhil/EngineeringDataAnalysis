clear all;
clc;

% Matrix as a column of row vectors
A = [1 2 3; 4 5 6; 7 8 9]

% Matrix as a row of column vectors
B = [[1;2;3] [4;5;6] [7;8;9]]

%  Add column to Matrix A
A_mod=[A,[-1;-1;-1]]	  

% Access row or column of matrix
u = A(1,:)
v = A(:,2)'

% Element wise operators
w1 = v.*u;
w2 = v./u;
w3 = v.^u;

% Define a matrix
% A0 = [1 2 3;3 4 5];

B1 = sin(A);

B2 = log(A);

% Plot the sinus function
% x = [0:pi/10:2*pi];
% y = sin(x);
% plot(x,y);

% Define an identity matrix
Id_mat = eye(7);

% Define a matrix of zeros
Zero_mat = zeros(5,6);

one

