clc
clear all;
A = [1 2 3; 4 5 6; 7 8 10];
d = diag(A);
I = eye(size(A));
A(1:3+1:3*3) = 1;