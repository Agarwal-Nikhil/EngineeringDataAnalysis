clc;
clear;

A=[0 2 3;4 2 6;7 8 9]
B=[0 0 0;1 2 3; 7 8 9]

e=find(A==B)

B = A<5;

A(B)=0;